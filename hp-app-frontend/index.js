const quizDiv = document.querySelector("div#quiz-body");
const scoreDiv = document.querySelector("div#score");
const livesDiv = document.querySelector("div#lives");
const questionP = document.querySelector("p#question");
const quizForm = document.querySelector("form");
const submitBtn = document.querySelector("button#submit");
const usersURL = "http://localhost:3000/users";

const leaderboardBtnDiv = document.querySelector("div#see_leaderboard");
leaderboardBtnDiv.innerText = "Leaderboard";
leaderboardBtnDiv.style.display = "none";

leaderboardBtnDiv.addEventListener("click", function handler(event) {
  event.target.removeEventListener("click", handler);
  fetchUsers();
});

submitBtn.style.display = "none";

let gameQuestions;
let questions;
let user;

function fetchUsers() {
  fetch(usersURL)
    .then(resp => resp.json())
    .then(data => showLeaderboard(data));
}

function backToMenu() {
  document.querySelector("table").remove();
  restartAnimation(questionP, "fadeIn");
  quizForm.style.display = "block";
  leaderboardBtnDiv.addEventListener("click", function handler(event) {
    leaderboardBtnDiv.innerText = "Leaderboard";
    event.target.removeEventListener("click", handler);

    fetchUsers();
  });
}

function showLeaderboard(users) {
  leaderboardBtnDiv.innerText = "Main menu";

  leaderboardBtnDiv.addEventListener("click", function handler(event) {
    event.target.removeEventListener("click", handler);
    backToMenu();
  });
  setLeaderboardTable();

  leaderboardTBody = document.querySelector("tbody");
  for (let user of users) {
    userTr = document.createElement("tr");

    nameTd = document.createElement("td");
    nameTd.innerText = user.name;

    houseTd = document.createElement("td");
    houseTd.innerText = user.house.name;

    high_scoreTd = document.createElement("td");
    high_scoreTd.innerText = user.high_score;

    userTr.append(nameTd, houseTd, high_scoreTd);

    leaderboardTBody.appendChild(userTr);
  }
}

function setLeaderboardTable() {
  quizForm.style.display = "none";
  const leaderboardTable = document.createElement("table");
  quizDiv.appendChild(leaderboardTable);
  leaderboardTable.innerHTML = `<thead><tr>
  <th>Username</th><th>House</th><th>High Score</th>
  </tr></thead><tbody></tbody>`;
}

document.addEventListener("DOMContentLoaded", () => {
  welcome();
});

function fetchAllQuestions() {
  fetch("http://localhost:3000/questions")
    .then(resp => resp.json())
    .then(data => (questions = data));
  setTimeout(askName, 3000);
}

function welcome() {
  questionP.innerText = "Welcome";
  fetchAllQuestions();
}

function restartAnimation(element, removeClass = "fadeIn") {
  element.classList.remove(removeClass);
  element.offsetHeight;
  element.classList.add("fadeIn");
}

function askName() {
  leaderboardBtnDiv.style.display = "block";
  restartAnimation(questionP, "fadeInOut");
  questionP.innerHTML = "What's your name?";

  const nameInput = document.createElement("input");
  nameInput.id = "name";
  nameInput.name = "username";
  nameInput.type = "text";
  nameInput.placeholder = "Your name";

  submitBtn.innerText = "Submit Name";
  submitBtn.style.display = "initial";

  restartAnimation(submitBtn);
  restartAnimation(nameInput);

  quizForm.insertBefore(nameInput, submitBtn);

  quizForm.addEventListener("submit", event => sendUserToBackend(event));
}

function sendUserToBackend(event) {
  event.preventDefault();
  const username = event.target.username.value;
  postUser(username);
}

function postUser(username) {
  leaderboardBtnDiv.style.display = "none";
  const userData = { name: username };

  let configObj = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(userData)
  };

  fetch(usersURL, configObj)
    .then(resp => resp.json())
    .then(data => userCreated(data));
}

function userCreated(userObj) {
  user = userObj;
  restartAnimation(questionP);
  questionP.innerHTML = `Greetings ${
    userObj.name
  }, the sorting hat has assigned you to the house of ${userObj.house.name}`;
  document.querySelector("input").remove();
  submitBtn.style.display = "none";
  setTimeout(startGameMessage, 4500);
}

function startGameMessage() {
  restartAnimation(questionP);
  document
    .querySelector("body")
    .addEventListener("click", function handler(event) {
      event.currentTarget.removeEventListener("click", handler);
      playGame();
    });
  questionP.innerHTML =
    "As you solemnly swear to be up to no good...<br>You only have 3 lives.<br>Good luck<br>Click anywhere to begin";
}

//////////////////////////////// GAME FUNCTIONS ///////////////////////////////////

function shuffle(array) {
  return array.sort(() => Math.random() - 0.5);
}

function getGameQuestions() {
  return shuffle(questions).slice(-10);
}

function playGame() {
  gameQuestions = getGameQuestions();
  nextQuestion();
}

function nextQuestion() {
  gameQuestions.length === 0
    ? gameOver(true)
    : askQuestion(gameQuestions.pop());
}

function createDoorSound() {
  const doorSound = document.createElement("embed");

  doorSound.src = "squeaky_door.mp3";
  doorSound.autostart = true;
  doorSound.id = "doorSound";
  doorSound.width = 0;
  doorSound.height = 0;
  document.querySelector(".sounds").appendChild(doorSound);
}

function askQuestion(gameQuestion) {
  livesDiv.innerText = `Lives: ${user.lives}`;
  scoreDiv.innerText = `Score: ${user.score}`;
  createDoorSound();

  questionP.innerHTML = gameQuestion.content;
  for (let answer of gameQuestion.answers) {
    const answerP = document.createElement("p");
    answerP.className = "answer";
    answerP.innerHTML = answer.content;
    quizForm.insertBefore(answerP, submitBtn);
    answerP.addEventListener("click", event =>
      checkAnswer(answer.id, gameQuestion.id)
    );
  }
}

function checkAnswer(answer_id, question_id) {
  fetch(`http://localhost:3000/questions/${question_id}/check/${answer_id}`)
    .then(resp => resp.json())
    .then(data => displayResult(data));
}

function addScore() {
  user.score += 1;
  scoreDiv.innerText = `Score: ${user.score}`;
  questionP.innerHTML = `Jolly good ${user.name}, one point to ${
    user.house.name
  }!`;
  setTimeout(nextQuestion, 1500);
}

function deductLife() {
  if (user.lives === 0) {
    gameOver(false);
  } else {
    user.lives -= 1;
    livesDiv.innerText = `Lives: ${user.lives}`;
    questionP.innerHTML = `Oh dear, wrong answer<br>You have ${
      user.lives
    } lives left`;
    setTimeout(nextQuestion, 1500);
  }
}

function displayResult(result) {
  document.querySelector("#doorSound").remove();
  document
    .querySelectorAll(".answer")
    .forEach(e => e.parentNode.removeChild(e));
  if (result.is_correct === true) {
    addScore();
  } else {
    deductLife();
  }
  // setTimeout(nextQuestion(), 2000)
}

function gameOver(won) {
  if (won === true) {
    questionP.innerHTML = `You won! Well done, you made ${
      user.house.name
    } proud.`;
  } else {
    questionP.innerHTML = `Your game ends here, but all is not lost. And I heard ${
      user.house.name
    } students can be rather forgiving.`;
  }
  setHighscore();
}

function setHighscore() {
  if (user.score > user.high_score) {
    persistScore(user.score);
  }
}

function persistScore(score) {
  const scoreData = { high_score: score };
  debugger;

  let configObj = {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(scoreData)
  };

  fetch(usersURL + `/${user.id}`, configObj).then(resp => resp.json());
  fetchUsers();
}

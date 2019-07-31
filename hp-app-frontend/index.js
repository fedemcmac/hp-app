const quizDiv = document.querySelector("div#quiz-body");
const questionP = document.querySelector("p#question");
const quizForm = document.querySelector("form");
const submitBtn = document.querySelector("button#submit");
let gameQuestions;
let questions;
let user;

submitBtn.style.display = "none";

const usersURL = "http://localhost:3000/users";

document.addEventListener("DOMContentLoaded", () => {
  fetchAllQuestions();
  setTimeout(welcome);
  setTimeout(askName, 3000);
});

function fetchAllQuestions(questionsURL) {
  fetch("http://localhost:3000/questions")
    .then(resp => resp.json())
    .then(data => (questions = data));
}

function welcome() {
  questionP.innerText = "Welcome";
}

function restartAnimation(element, removeClass = "fadeIn") {
  element.classList.remove(removeClass);
  element.offsetHeight;
  element.classList.add("fadeIn");
}

function askName() {
  restartAnimation(questionP, "fadeInOut");
  questionP.innerHTML = "What's your name?";

  const nameInput = document.createElement("input");
  nameInput.id = "name";
  nameInput.name = "username";
  nameInput.type = "text";
  nameInput.placeholder = "Your name";

  submitBtn.innerText = "Submit Name";
  submitBtn.style.display = "block";

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
  userData = { name: username };

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
  setTimeout(startGameMessage, 3000);
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
    "As you solemnly swear to be up to no good...<br>You have 10 seconds to pick the correct answer for each question.<br>You only have 3 lives.<br>Good luck<br>Click anywhere to begin";
}

//////////////////////////////// GAME FUNCTIONS //////////////////////////////

function shuffle(array) {
  return array.sort(() => Math.random() - 0.5);
}

function getGameQuestions() {
  return shuffle(questions).slice(-13);
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
  questionP.innerHTML = `One point to ${user.house.name}!`;
  setTimeout(nextQuestion, 2000);
}

function deductLife() {
  if (user.lives === 0) {
    gameOver(false);
  }
  user.lives -= 1;
  questionP.innerHTML = `Oh dear, wrong answer<br>You have ${
    user.lives
  } lives left`;

  setTimeout(nextQuestion, 2000);
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
  debugger;
  // send score to backend
  // if won do stuff
  // else lost do stuff
}

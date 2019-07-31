const quizDiv = document.querySelector("div#quiz-body");
const questionP = document.querySelector("p#question");
const quizForm = document.querySelector("form");
const submitBtn = document.querySelector("button#submit");
submitBtn.style.display = "none";

const userURL = "http://localhost:3000/users";

document.addEventListener("DOMContentLoaded", () => {
  setTimeout(welcome);
  setTimeout(askName, 1000);
});

function welcome() {
  questionP.innerText = "Welcome";
}

function askName() {
  questionP.innerHTML = "What's your name?";

  const nameInput = document.createElement("input");
  //   nameInput.id = "name";
  nameInput.name = "username";
  nameInput.type = "text";
  nameInput.placeholder = "Your name";

  submitBtn.innerText = "Submit Name";
  submitBtn.style.display = "block";

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

  fetch(userURL, configObj)
    .then(resp => resp.json())
    .then(data => userCreated(data));
}

function userCreated(userObj) {
  debugger;
}

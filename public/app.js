fetch("/api/exercises")
  .then((response) => response.json())
  .then((exercises) => {
    // Process the exercises and add them to the list
  })
  .catch((error) => console.error(error));

const calorieIntakeInput = document.getElementById("calorie-intake-input");
const addCalorieIntakeBtn = document.getElementById("add-calorie-intake-btn");
const currentCalorieCount = document.getElementById("current-calorie-count");
let totalCalories = 2000;

addCalorieIntakeBtn.addEventListener("click", () => {
  const calorieIntake = parseInt(calorieIntakeInput.value);
  totalCalories += calorieIntake;
  currentCalorieCount.innerText = totalCalories;
});

const exercisesListLink = document.getElementById("exercises-list-link");
const exercisesListSection = document.getElementById("exercises-list-section");
const exercisesList = document.getElementById("exercises-list");

exercisesListLink.addEventListener("click", () => {
  // Show the exercises list section
  exercisesListSection.style.display = "block";

  // Clear any previous exercises
  exercisesList.innerHTML = "";

  // TODO: Fetch exercises from the exercises table and add them to the list
});

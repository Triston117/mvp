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

  if (isNaN(calorieIntake)) {
    console.error("Invalid calorie intake:", calorieIntakeInput.value);
    return;
  }

  totalCalories += calorieIntake;
  currentCalorieCount.innerText = totalCalories;
});

// Update current calorie count on page load
currentCalorieCount.innerText = totalCalories;

const exercisesListLink = document.getElementById("exercises-list-link");
const exercisesListSection = document.getElementById("exercises-list-section");
const exercisesList = document.getElementById("exercises-list");

exercisesListLink.addEventListener("click", () => {
  exercisesListSection.style.display = "block";
  exercisesList.innerHTML = "";

  // Get all of the list items in the week header
  const weekHeader = document.querySelector(".week-header");
  const daysOfWeek = weekHeader.querySelectorAll("li");

  // Loop through each list item and add an event listener to it
  daysOfWeek.forEach((day) => {
    day.addEventListener("click", () => {
      // Get the day of the week from the data-day attribute
      const dayOfWeek = day.dataset.day;

      // TODO: Store the workout on the appropriate day of the week
      console.log(`Workout stored on ${dayOfWeek}`);
    });
  });

  // TODO: Fetch exercises from the exercises table and add them to the list
});

const workouts = {
  Monday: [],
  Tuesday: [],
  Wednesday: [],
  Thursday: [],
  Friday: [],
  Saturday: [],
  Sunday: [],
};

daysOfWeek.forEach((day) => {
  day.addEventListener("click", () => {
    const dayOfWeek = day.dataset.day;
    const exerciseName = prompt("Enter the exercise name:");
    const exerciseDuration = parseInt(
      prompt("Enter the exercise duration in minutes:")
    );
    const workout = { name: exerciseName, duration: exerciseDuration };
    workouts[dayOfWeek].push(workout);
    console.log(`Workout stored on ${dayOfWeek}`);
  });
});

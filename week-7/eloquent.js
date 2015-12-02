// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myAge = 23;
myAge = myAge + 1;
console.log(myAge);

/*
prompt("What is your favorite food?", "");
console.log("Hey! That's my favorite too!");
*/

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var hash = "#"
while (hash.length <= 7) {
  console.log(hash)
  hash += "#"
}

var counter = 1;
while (counter <= 100){
  if (counter % 3 == 0)
    console.log("Fizz");
  else if (counter % 5 == 0)
    console.log("Buzz");
  else
    console.log(counter);
  counter += 1;
}

// Functions

// Complete the `minimum` exercise.

function min(a, b){
  if (a < b)
    return a;
  else
    return b;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "jonathan",
  age: 23,
  favoriteFoods: ["noodles", "pizza", "ice cream"],
  quirk: "doesn't eat beef"
};


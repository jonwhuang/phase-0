 // JavaScript Olympics

// I paired with Jack Abernethy on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

/* pseudocode

input: array of athletes
output: add a win property (no return value)
iterate over array
  add win property

*/

function addWin(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = function() {
      console.log(this.name + " won the " + this.event);
    };
  }
};

var sarah = {
  name: "Sarah",
  event: "Ladies Singles"
}

var bill = {
  name: "Bill",
  event: "Men's bobsledding"
}

var arr = [sarah, bill];
addWin(arr);
arr[0].win();
arr[1].win();



// Jumble your words

function reverse(string) {
  return string.split("").reverse().join("");
}

console.log(reverse("Hello"))
console.log(reverse("Dev Bootcamp"))

// 2,4,6,8

function even(numbers) {
  var ret = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 === 0)  ret.push(numbers[i]);
  }
  return ret;

//   var ret = [];
//   ret = numbers.map(function(curr, idx, numbers){
//     if (curr % 2 === 0)  curr = curr;
//   });

}

console.log(even([1,2,3,4,5,6]));

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I learned a lot of Javascript syntax. Different built in methods as well as how to use a constructor function and practice using the for loop.
What are constructor functions?
Constructor functions are similar to Ruby classes. It is used to create an object. Properties and methods can be created inside the constructor function that is specific to that object.
How are constructors different from Ruby classes (in your research)?
Constructors seem to be structured like an object itself, while Ruby classes have that type of set-up.
*/
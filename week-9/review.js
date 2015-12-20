//Javascript Grocery List

// Pseudocode:
// Use prototype constructor to create Javascript object list
//   Initializes a new list
//     Create property item_list of list that contains its own properties (items + quantities)

// New prototype functions:
//   Add new item to list - takes item name and optional quantity
//     Add property to item_list
//       IF quantity is given, set item value
//       ELSE set equal to 1

//   Remove item from list - takes item name
//     IF item is a property of item_list
//       delete item

//   Update quantity of an item - takes item name and quantity
//     IF item is property of item_list
//       change value to quantity

//   Print the list
//     Iterate through each property in item_list and print out item name and quantity


//Initial Solution:

// function Grocery () {
//   this.list = {};
//   this.add = function(item_name, quantity) {
//     if (quantity === undefined) {
//       this.list[item_name] = 1;
//     }
//     else {
//       this.list[item_name] = quantity;
//     }
//   }
//   this.remove = function(item_name) {
//     delete this.list[item_name];
//   }
//   this.update = function(item_name, quantity){
//     if (item_name in this.list) {
//       this.list[item_name] = quantity;
//     }
//   }
//   this.print = function() {
//     console.log("Grocery List");
//     for (var item in this.list) {
//       console.log(item + ": " + this.list[item]);
//     }
//     console.log("");
//   }
// }

// var newList = new Grocery();

// newList.add("milk");
// newList.add("bread", 2000);
// newList.print();
// newList.update("bread", 5);
// newList.print();
// newList.remove("milk");

// newList.print();

//Refactored Solution

function Grocery () {

  this.list = {};

  this.add = function(item_name, quantity) {
    if (quantity === undefined) {
      this.list[item_name] = 1;
    }
    else {
      this.list[item_name] = quantity;
    }
  }

  this.remove = function(item_name) { delete this.list[item_name];}

  this.update = function(item_name, quantity){
    if (item_name in this.list) { this.list[item_name] = quantity;}
  }

  this.print = function() {
    console.log("Grocery List");
    for (var item in this.list) {
      console.log(item + ": " + this.list[item]);
    }
    console.log("");
  }

}

var newList = new Grocery();

newList.add("milk");
newList.add("bread", 2000);
newList.print();
newList.update("bread", 5);
newList.print();
newList.remove("milk");

newList.print();


/*
Reflection
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I definitely have a better understanding of objects and constructors in Javascript now. I feel pretty confident with it and I was able to complete the assignment fairly easily.

What was the most difficult part of this challenge?
I think the most difficult part this time was just coming up with the pseudocode. I was trying to figure out how to save the list but once I figured that out it wasn't too hard from there.

Did an array or object make more sense to use and why?
I used an object here because I could use the object to store the quantities of each grocery list item. An array would only have stored the items without the quantities of each.

*/

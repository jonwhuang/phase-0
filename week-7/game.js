// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Collect as many coins as you can without dropping more than 3
// Goals: Collect coins, Avoid dropping coins
// Characters: Man (collects coins)
// Objects: Coins(position), Man(position, coins collected)
// Functions: moveLeft, moveRight

// Pseudocode
// Declare a "man" object with properties as position and coins collected
// Add different methods to "man" to allow it to move left and right. When the man moves, the coins drop too.
// Declare separate coin objects and give them random starting positions at the top.
// If player collects coin, add one to coins collected
// If coin is collected or missed, spawn another coin.
// If player drop 3 coins, game over.

// Initial Code
/*
var coin = {
  posX: Math.floor(Math.random()*10 + 1),
  posY: 10
}

var man = {
  posX: 5,
  posY: 1,
  coins: 0,
  missed: 0,

  move: function(direction) {
    //end game if three coins are missed
    if (this.missed === 3) {
      console.log("Game over! You collected " + this.coins + " coins total!");
    }
    else {
      //movement functions for man
      if (direction === 'left'){
        this.posX -= 1;
      }
      else if (direction === 'right') {
        this.posX += 1;
      }

      //coins drop as man moves
      coin.posY -= 1;

      //if a coin is dropped, spawn a new coin and add one to missed coins
      if(coin.posY === 0) {
        console.log("Oops! You missed a coin!");
        this.missed += 1;
        coin.posX = Math.floor(Math.random() * 10 + 1);
        coin.posY = 10;
      }


      //display position of all objects
      console.log("Your position is " + this.posX);
      console.log("Coin's position is " + coin.posX + " " + coin.posY);

      //check if player collected a coin, if they did, add one to coins collected and spawn new coin
      if(this.posX === coin.posX && this.posY === coin.posY){
        this.coins += 1;
        console.log("You have collected " + this.coins + " coins!");
        coin.posX = Math.floor(Math.random() * 10 + 1);
        coin.posY = 10;
      }
    }
  }

}

man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('right');
man.move('left');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
man.move('left');
man.move('right');
*/

// Refactored Code


// //coin objects
// var nickel = {
//   posX: Math.floor(Math.random()*10 + 1),
//   posY: 14
// }

// var dime = {
//   posX: Math.floor(Math.random()*10 + 1),
//   posY: 9
// }

// var quarter = {
//   posX: Math.floor(Math.random()*10 + 1),
//   posY: 15
// }

// //man object
// var man = {
//   posX: 5,
//   posY: 0,
//   coins: 0,
//   missed: 0,


//   move: function(direction) {
//     //end game if three coins are missed
//     if (this.missed >= 3) {
//       console.log("Game over! You collected " + this.coins + " coins total!");
//     }
//     else {
//       //movement functions for man
//       switch (direction){
//         case 'left':
//           if (this.posX != 1) {
//             this.posX -= 1;
//           }
//           break;
//         case 'right':
//           if (this.posX != 10) {
//             this.posX += 1;
//           }
//       }

//       //coins drop as man moves
//       dime.posY -= 1;
//       nickel.posY -= 2;
//       quarter.posY -= 3;

//       //display position of all objects
//       console.log("Your position is " + this.posX);
//       console.log("Dime's position is column: " + dime.posX + " and row: " + dime.posY);
//       console.log("Nickel's position is column: " + nickel.posX + " and row: " + nickel.posY);
//       console.log("Quarter's position is column: " + quarter.posX + " and row: " + quarter.posY);

//       checkCoin(dime);
//       checkCoin(nickel);
//       checkCoin(quarter);

//     }
//   }

// }

// //check if player collected coin when coin reaches bottom
// function checkCoin(coin) {
//   if(coin.posY === 0) {
//     if (man.posX === coin.posX && man.posY === coin.posY){
//       man.coins += 1;
//       console.log("You have collected " + man.coins + " coins!");
//       console.log("");
//     }
//     else {
//       console.log("Oops! You missed a coin!");
//       console.log("");
//       man.missed += 1;
//     }
//     //spawn a new coin
//     coin.posX = Math.floor(Math.random() * 10 + 1);
//     coin.posY = 18;
//   }
// }

//Initialize first coin
var coin = {
    posX: Math.floor(Math.random()*10 + 1),
    posY: 10
}
//array to hold coin objects
var coins = [coin];


var pouch = {
  posX: 5,
  posY: 0,
  coins: 0,
  missed: 0,
  stepsTaken: 0,


  move: function(direction) {
    //end game if three coins are missed
    if (this.missed >= 3) {
      console.log("Game over! You collected " + this.coins + " coins total!");
    }
    else {
      //movement functions for pouch
      switch (direction){
        case 'left':
          if (this.posX != 1) {
            this.posX -= 1;
          }
          break;
        case 'right':
          if (this.posX != 10) {
            this.posX += 1;
          }
          break;
        // stays in same spot, but coins still drop
        case 'up':
          break;
      }
      //spawns new coin every 4 steps taken
      this.stepsTaken += 1;
      if (this.stepsTaken % 4 === 0 && this.stepsTaken != 0) {
        spawnCoin();
      }

      //coins drop as pouch moves
      for (var i = 0; i < coins.length; i++) {
        coins[i].posY -= 1;
        console.log("Coin's position is column: " + coins[i].posX + " and row: " + coins[i].posY);
        checkCoin(coins[i]);
      }

      console.log("Number of coins falling: " + coins.length);

    }
  }

}

//check if player collected coin when coin reaches bottom
function checkCoin(coin) {
  if(coin.posY === 0) {
    if (pouch.posX === coin.posX && pouch.posY === coin.posY){
      pouch.coins += 1;
      console.log("You have collected " + pouch.coins + " coins!");
      console.log("");
    }
    else {
      console.log("Oops! You missed a coin!");
      console.log("");
      pouch.missed += 1;
    }
    //spawn a new coin at top
    coin.posX = Math.floor(Math.random() * 10 + 1);
    coin.posY = 10;
  }
}

//creates a new coin object to drop
function spawnCoin() {
  var coin = {
    posX: Math.floor(Math.random()*10 + 1),
    posY: 10
  }

  coins.push(coin);
}

pouch.move('right');
pouch.move('left');
pouch.move('right');
pouch.move('right');
pouch.move('left');
pouch.move('left');
pouch.move('right');
pouch.move('left');
pouch.move('right');
pouch.move('right');
pouch.move('left');
pouch.move('left');
pouch.move('right');
pouch.move('left');
pouch.move('right');
pouch.move('right');
pouch.move('left');
pouch.move('left');
pouch.move('right');
pouch.move('left');
pouch.move('right');
pouch.move('right');
pouch.move('left');
pouch.move('left');

// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge (if not including the bonus part) was probably creating a method to create new coins. It took me a while to think of using an array to hold all of the coin objects, and then I had to implement loops to call functions to each coin.
// What did you learn about creating objects and functions that interact with one another?
// I definitely understand it a lot better now. Right now, I defined the function move as a property of pouch. I had a hard time finding a way to reset my game when I added it to my website, and I ended up splitting up the move function into its own section. The checkCoin function was also something I implemented to call the function with another function.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I don't think I used any brand new built-in methods. I used loops, which I didn't use in my initial solution, and tried to organize my code better during the refactoring process. I also added new functions during the refactoring process that I wanted to try.
// How can you access and manipulate properties of objects?
// You can access the properties of objects by calling it, like object.property, and manipulate it by changing, like object.property += 1. You can also add properties to an object with object.new_property = "string".

//Link for game: http://jonwhuang.github.io/projects/week-7-game/game.html
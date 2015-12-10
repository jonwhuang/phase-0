// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Steven Jones
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input: votes object
// Output: number of votes each candidate received for president (in an object)
// Steps:
// 1. iterate over votes object
//   - for each voter property, iterate over values object
//   - for each office in voter[values]


//     - check to see if votes[voter][office] is a value in voteCount[office]
//       - IF true, increment by 1
//       - IF false, add object with candidate name as property and 1 as value

//Input: voteCount object
//Output: updated elected officers object
//Steps:
// - Iterate through voteCount object
//   - Iterate through each office
//     - Determine maximum votes (sort?) and return the candidate name
//     - Assign that name to officers




// __________________________________________
// Initial Solution
// for (var studentName in votes) {
//   if (votes.hasOwnProperty(studentName)) {
//     var objOfStudentName = votes[studentName];
//       // console.log(objOfStudentName);

//     for (var office in objOfStudentName) {
//       if (objOfStudentName.hasOwnProperty(office)) {
//         var candidateName = votes[studentName][office];
//           // console.log(candidateName);
//         if (voteCount[office][candidateName] >= 1) {
//           voteCount[office][candidateName] += 1;
//         }
//         else {
//           voteCount[office][candidateName] = 1;
//         }
//       }
//     }
//   }
// }




// for (var office in voteCount) {
//   if (voteCount.hasOwnProperty(office)) {
//     var sortable = [];
//     var candidateNames = voteCount[office];
//     for (var candidate in candidateNames) {
//         sortable.push([candidate, candidateNames[candidate]])
//         sortable.sort(function(a,b){return b[1] - a[1]})

//       }

//     officers[office] = sortable[0][0];
//   }
// }
// console.log(officers);



// __________________________________________
// Refactored Solution

for (var studentName in votes) {
    for (var office in votes[studentName]) {
        var candidateName = votes[studentName][office];
        if (voteCount[office][candidateName] >= 1) {
          voteCount[office][candidateName]++;
        }
        else {
          voteCount[office][candidateName] = 1;
        }
    }
}

for (var office in voteCount) {
    var sortedVotes = [];
    for (var candidate in voteCount[office]) {
        sortedVotes.push([candidate, voteCount[office][candidate]])
        sortedVotes.sort(function(a,b){return b[1] - a[1]})
      }
    officers[office] = sortedVotes[0][0];
}




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// The for...in...iterating method was definitely useful for this challenge. It was also a little confusing to perform iteration within iteration to successfully complete the challenge. I definitely need more practice with it.
// Were you able to find useful methods to help you with this?
// We found #push and #sort to help us count up and determine who won each office.
// What concepts were solidified in the process of working through this challenge?
// I definitely learned a lot about accessing properties in Javascript. I found it a little more confusing than Ruby hashes and I'll need more practice with objects in JS.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
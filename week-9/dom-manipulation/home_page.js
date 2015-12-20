// DOM Manipulation Challenge


// I worked on this challenge with Jenna Espezua.


// Add your JavaScript calls to this page:

// Release 1:

document.getElementById("release-0").className += "done";
// var attDone = document.createAttribute("class");
// attDone.value = "done";
// release0.setAttributeNode(attDone);
// var release0Done = document.getElementsByClassName("done");
// release0Done.style.color = 'blue';
// document.getElementsByName("done").style.color = "blue";

// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

document.getElementsByTagName("H1")[0].innerHTML = 'I completed release 2.';


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:

// document.getElementsByClassName("release-4").style.fontSize = 2em;

var increaseFont = document.getElementsByClassName("release-4");

for(var i = 0; i < increaseFont.length; i++) {
  increaseFont[i].style.fontSize = "2em";
}

// Release 6:

var template = document.getElementById("hidden");

document.body.appendChild(template.content.cloneNode(true));

//Reflection:
// What did you learn about the DOM?
// I learned a lot! I had used a little of Javscript to manipulate DOM during my solo challenge to implement my game onto my site, but I got to use a couple new things in this challenge and I also understand better how it actually works.
// What are some useful methods to use to manipulate the DOM?
// getElementById is probably one of the most useful ones in my opinion. It was also helpful to learn that getElementsByClassName and getElementsByTagName return arrays and not just one value like getElementById.
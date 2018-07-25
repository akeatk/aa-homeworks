function titleize(names, callback) {
  return names.map(callback);
}
function printCallback(name) {
  console.log(`Mx. ${name} Jingleheimer Schmidt`);
}
titleize(["Mary", "Brian", "Leo"], printCallback);

let Elephant = function(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes  'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  console.log(`${this.name} is ${this.tricks[Math.floor(Math.random() * this.tricks.length)]}`);
}
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
ellie.trumpet();
console.log(ellie.height);
ellie.grow();
console.log(ellie.height);
console.log(ellie.tricks);
ellie.addTrick('playing piano');
console.log(ellie.tricks);
ellie.play();

Elephant.prototype.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`)
}


ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

herd.forEach(Elephant.prototype.paradeHelper);

function dinerBreakfast() {
  let order = [];
  let func = function(food) {
    order.push(food);
    str = `I'd like ${order[0]}`;
    for(let i = 1;i < order.length;i++) {
      str += ` and ${order[i]}`;
    }
    console.log(str + ` please.`);
  }
  func('cheesy scrambled eggs');
  return func;
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");

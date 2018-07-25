function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  for(let i = 0;i < searchString.length - subString.length;i++) {
    if(searchString.slice(i, i + subString.length) == subString)
      return true;
  }
  return false;
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(arr) {
  res = [];
  for(let i=0;i<arr.length;i++) {
    if(arr[i] % 3 === 0 || arr[i] % 5 === 0) {
      if(arr[i] % 15 !== 0)
        res.push(arr[i]);
    }
  }
  return res;
}

console.log(fizzBuzz([1,3,4,5,6,10,15,30,33]));

function isPrime(number) {
  for(let i = 2;i < number;i++) {
    if(number % i === 0)
      return false;
  }
  return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

function sumOfNPrimes(n) {
  if(n < 0)
    return null;
  let sum = 0;
  for(let i=2, j=0;j < n;i++) {
    if(isPrime(i)) {
      j++;
      sum += i;
    }
  }
  return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));

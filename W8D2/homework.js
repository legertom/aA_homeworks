// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

//   function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// //   }
  
//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
//   "x" has already been declared as constant, can not be reassigned in the if block

  
//   function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
//   }

function madlib(verb, adjective, noun) {
    let x = `We shall ${verb} ` + `the ${adjective} ` + `${noun}`
    console.log(x)
}

madlib('run', 'big', 'ice cream')

function isSubstring(string, sub) {
    let words =  string.split(" ");
    if (words.includes(sub)){
        return true;
    } else {
        return false;
    }

    }
    
console.log(isSubstring("time to program", "time"))

function fizzbuzz(array) {
    let new_arr = []
    for(let i = 0; i < array.length; i++) {
        let number =  array[i]
        if ((number % 3== 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 ==0 ))
        new_arr.push(number)
    }
   return new_arr
}


console.log(fizzbuzz([3, 15, 30, 50, 9, 17]))

function isPrime(number) {
    if (number < 2) {
        return false
    }
    for(let i=2; i < number; i++) {
        if (number % i == 0) {
            return false
        }
    }

    return true
}
console.log(isPrime(7))
console.log(isPrime(2))
console.log(isPrime(10))

function firstNPrimes(n) {
    num_array = []
    i = 2
    do {
        if (isPrime(i)){
            num_array.push(i)
        }
        i++
    } while (num_array.length < n)
    
    return num_array
}

function sumOfFirstNPrimes(n) {
    num_array = firstNPrimes(n)
    let sum = num_array.reduce((accumulator, value) => {
        return accumulator + value;
    }, 0);
    return sum
}

console.log(firstNPrimes(10))
console.log(sumOfFirstNPrimes(100))
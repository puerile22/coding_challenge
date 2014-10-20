var circPrim = function(n) {
  var start = Date.now();
  var ans = [];
  for (var i = 1;i <= n;i++) {
    if (i % 2 === 0 || (i.toString().indexOf('0') !== -1 || i.toString().indexOf('2') !== -1 || i.toString().indexOf('4') !== -1 || i.toString().indexOf('6') !== -1 || i.toString().indexOf('8') !== -1)) {
      continue;
    }
    else if (primeCheck(i)) {
      num = i.toString();
      if (circCheck(num,ans)) {
        ans.push(i);
      }
    }
  }
  var total = (Date.now()-start)/1000;
  console.log('Runtime: '+total+'s');
  console.log(ans);
};

var primeCheck = function(n) {
  if (n === 1) {
    return false;
  }
  for (var i = 2;i <= Math.sqrt(n);i++){
    if (n % i === 0) {
      return false;
    }
  }
  return true;
};

var circCheck = function(num,arr) {
  var count = 0;
  for (var j = 1;j <= num.length;j++){
    num = num.substring(1,num.length) + num.substring(0,1);
    if (num.slice(0,1) === '0') {
      var firstDigit = '0';
    } else {
      var firstDigit = "";
    }
    num = parseInt(num);
    if (primeCheck(num)) {
      num = firstDigit + num.toString();
      count++;
    }
    // if (primeCheck(num)) {
    // } 
  }
  if (count === num.length) {
    return true;
  }
  return false;
};

circPrim(1000000);
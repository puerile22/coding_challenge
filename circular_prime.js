var circPrim = function(n) {
  var ans = [];
  for (var i = 1;i <= n;i++) {
    if (n % 2 === 0) {
      continue;
    }
    if (primeCheck(i)) {
      num = i.toString();
      if (circCheck(num)) {
        ans.push(i);
      }
    }
  }
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

var circCheck = function(num) {
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
  }
  if (count === num.length) {
    return true;
  }
  return false;
};
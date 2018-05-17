const array = [1, 2, 3];

// array.forEach(function(n) {
//   console.log(n * 10);
// });

const myEach = function(array, f) {
  let i = 0;
  while(i < array.length) {
    f(array[i]);
    i++;
  }
};

myEach(array, function(n) {
  console.log(n * 100);
  console.log(array.length);
});

myEach(array, function(n) {
  console.log(n * n);
});

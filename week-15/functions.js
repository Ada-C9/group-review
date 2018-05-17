const array = [1];

const showThis = function() {
  console.log("`this` from outer scope:");
  console.log(this);

  array.forEach((n) => {
    console.log("`this` from inner scope:");
    console.log(this);
  });
};

const someValue = 3;

const boundFunc = showThis.bind(someValue);

boundFunc();

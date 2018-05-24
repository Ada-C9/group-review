
const clickCounter = function() {
  let n = 0;

  return function(event) {
    n += 1;
    $(event.target).html(n);
  };
};

const makeGreeter = function(name) {
  return function(n) {
    switch(n) {
      case 1:
      console.log(`Hello ${name}!`);
      break;
      case 2:
      console.log(`Hola ${name}!`);
      break;
      case 3:
      console.log(`Bonjour ${name}!`);
      break;
    }
  };
};


$(document).ready(() => {
  const counterForFirstH1 = clickCounter();

  $('h1:first').click(counterForFirstH1);
  $('h1:last').click(clickCounter());

  const adaGreeter = makeGreeter('Ada');
  const charlesGreeter = makeGreeter('Charles');

  adaGreeter(1);
  charlesGreeter(1);

  adaGreeter(2);
  charlesGreeter(2);

  adaGreeter(3);
  charlesGreeter(3);



});

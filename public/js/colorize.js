// pick a random color, as a 3-hex-digit code:
function randomColor() {
  const c = () => Math.floor(Math.random()*16).toString(16);
  return('#' + [...Array(3).keys()].map(_ => c()).join(''))
}

// colorize the figlet text:
function colorize() {
  let pre = document.getElementById('figlet');
  pre.style.color = randomColor();
}

// every half second:
setInterval(colorize, 500);

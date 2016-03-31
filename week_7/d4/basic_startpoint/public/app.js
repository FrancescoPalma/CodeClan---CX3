window.onload = function() {
  var canvas = document.getElementById('main');
  console.log('canvas', canvas);
  var context = canvas.getContext('2d');

  // draw shadows
  context.shadowColor = "#ff6666";
  context.shadowOffsetY = 12;
  context.shadowOffsetX = 6;

  // draw rectangle
  context.fillStyle = '#FF0000';
  context.fillRect(10, 10, 50, 50);

  // draw line 
  context.beginPath();
  context.moveTo(130, 130);
  context.lineTo(190, 190);
  context.stroke();

  // draw ellipse
  context.beginPath();
  context.ellipse(120, 120, 50, 75, 45 * Math.PI/180, 0, 2 * Math.PI);
  context.stroke();

  canvas.onclick = function(event) {
    console.log('click', event);
    console.log('location', event.x, event.y);

    // draw circle on click
    context.beginPath();
    context.arc(event.x, event.y, 25,50,0,2*Math.PI);
    context.stroke();
  }
};

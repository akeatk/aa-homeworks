document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');
  let ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0,0,500,500);

  ctx.beginPath();
  ctx.arc(50,50,25,0,360);
  ctx.strokeStyle = 'blue';
  ctx.stroke();
  ctx.fillStyle = 'grey';
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(100,50);
  ctx.lineTo(150,75);
  ctx.lineTo(100,125);
  ctx.lineTo(150,125);
  ctx.lineTo(100,50);
  ctx.fill();
});

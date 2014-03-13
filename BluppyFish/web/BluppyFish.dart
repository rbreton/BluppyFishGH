import 'dart:html';
import 'dart:math';
onClickBoost(e){
  print('jump');
}
void main() {
  document.onClick.listen(onClickBoost);
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');
  var centerX = canvas.width / 2;
  var centerY = canvas.height / 2;
  var radius = 20;

  var c = context.arc(centerX, centerY, radius, 0, 2 * PI, false);
  context.fillStyle = 'lightgreen';
  context.fill();
  context.lineWidth = 1;
  
  /*
  CanvasElement buffer = document.createElement('canevasBuffer');
  buffer.width = canvas.width;
  buffer.height = canvas.height;
  CanvasRenderingContext2D bufferContext = buffer.getContext('2d');
  bufferContext.fillStyle = 'red';
  context.drawImage(buffer, 0, 0);
  */
}

/*
  var gx:Number = 0; // pixel movement right
var gy:Number = 0; // pixel movement down
var gravity:Number = .1 // drop speed increase per frame

function blockMovement(event:Event):void
{
gy += gravity; // Add the value of gravity to the current y location
mClip.x += gx; // Add the value of gx to the x location (move right)
mClip.y += gy; // Move the clip down to the new location
}

// Add an eventListener for the enter frame on the main timeline
this.addEventListener(Event.ENTER_FRAME, blockMovement);


function gameTick(){
  processKeyboard();
  moveEnemies();
  drawGraphics();
  updateAudio();
}

var fps = 60;
setInterval(gameTick, 1000 / fps);*/
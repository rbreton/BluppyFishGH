library BluppyFish;

import 'dart:html';
import 'dart:math';

part 'class/board.dart';
part 'class/bluppy.dart';
part 'class/pointage.dart';


void main() {
  CanvasElement canvas = querySelector('#canvas');
  Board board = new Board(canvas);
}





/*
num numX = 100;
num numY = 10;
num numGX = 0;
num numGY = 0;
num numGravity = .1;
CanvasElement canvas = document.querySelector('#canvas');
CanvasRenderingContext2D context = canvas.getContext('2d');

gameLoop(num delta){
  numGY += numGravity; // Add the value of gravity to the current y location
  numX += numGX; // Add the value of gx to the x location (move right)
  numY += numGY; // Move the clip down to the new location
  cleanGraphics();
  drawGraphics(numX,numY);
  
  window.requestAnimationFrame(gameLoop);
  
}
drawGraphics(num numX, num numY){
  var radius = 20;
  context.arc(numX, numY, radius, 0, 2 * PI, false);
  context.fillStyle = 'lightgreen';
  context.fill();
}
cleanGraphics(){
  context.clearRect(0, 0, 384, 640);
}
onClickBoost(e){
  print('jump');
}
void main() {
  document.onMouseDown.listen(onClickBoost);
  gameLoop(1);

  
 
}
*/





/*
CanvasElement buffer = document.createElement('canevasBuffer');
buffer.width = canvas.width;
buffer.height = canvas.height;
CanvasRenderingContext2D bufferContext = buffer.getContext('2d');
bufferContext.fillStyle = 'red';
context.drawImage(buffer, 0, 0);
 */

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
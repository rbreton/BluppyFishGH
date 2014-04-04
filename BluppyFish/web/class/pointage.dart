part of BluppyFish;

class Pointage {
  Board board;
  num x;
  num y;
  num point;

  Pointage(this.board, this.x, this.y, this.point) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    //board.context.rect(x, y, 66, 30);
    board.context.fillStyle = "FF4500";
    board.context.font = 'bold 13pt arial';
    
    board.context.fillText('Score : $point', x-20, y+15); 
    board.context.closePath();
  }
}
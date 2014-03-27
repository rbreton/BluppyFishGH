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
    board.context.rect(x, y, 50, 30);
    board.context.fillText('Score : $point', x+4, y+19); 
    board.context.closePath();
    board.context.stroke();

  }
}
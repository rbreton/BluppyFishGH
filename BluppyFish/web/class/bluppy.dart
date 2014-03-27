part of BluppyFish;

class Bluppy {
  Board board;
  num x;
  num y;

  Bluppy(this.board, this.x, this.y) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    board.context.arc(x, y, 10, 0, PI*2, true);
    board.context.fillStyle = "#0008db";
    board.context.closePath();
    board.context.fill();
  }
}
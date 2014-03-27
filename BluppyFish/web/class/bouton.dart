part of BluppyFish;

class Bouton {
  Board board;
  num x;
  num y;


  Bouton(this.board, this.x, this.y) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    board.context.rect(x, y, 45, 20);
    board.context.fillStyle = "#ff1c0a";
    board.context.fillText('Restart', x+5, y+14); 
    board.context.closePath();
    board.context.stroke();

  }
}
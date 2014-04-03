part of BluppyFish;

class Bluppy {
  Board board;
  num x;
  num y;
  ImageElement iEBluppy = document.querySelector('#bluppy');

  Bluppy(this.board, this.x, this.y) {
    draw();
  }

  void draw() {
    board.context.drawImage(iEBluppy, x, y);
    // Bluppy sans image
    /*board.context.beginPath();
    board.context.fillStyle = "#0008db";
    //board.context.arc(x, y, 10, 0, PI*2, true);
    board.context.fillRect(x, y, 10, 10);
    board.context.closePath();
    board.context.fill();
    board.context.beginPath();
    board.context.fillStyle = "#000000";
    board.context.fillRect(x, y, 1, 1);
    board.context.closePath();
    board.context.fill();
    board.context.beginPath();
    board.context.fillStyle =  "#ffffff";
    board.context.fillRect(x, y, 1, 1);
    board.context.fillStyle =  "#000000";
    board.context.fillText('X = $x : Y = ${y.floor()}', x+10, y+9);
    board.context.closePath();
    */
  }
}
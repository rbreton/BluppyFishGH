part of BluppyFish;


class Bar {
  static int R;
  static num Y1;
  static num Y2;
  Board board;
  num x;

  List lstBars = [
                     {"y1": 220, "y2": 290},
                     {"y1": 240, "y2": 270},
                     {"y1": 250, "y2": 250},
                     {"y1": 280, "y2": 230},
                     {"y1": 290, "y2": 220},
                     {"y1": 310, "y2": 200}
                     ];
  
  Bar(this.board, this.x) {
   
  R =  new Random().nextInt(lstBars.length);
  print (R);
  num y;
  Y1 = lstBars[R]["y1"];
  Y2 = lstBars[R]["y2"];
    draw();
  }
      
  void draw() {
    board.context.beginPath();
    board.context.fillStyle =  "#ff1493";
    board.context.fillRect(x, 0, 20, Y1);
    board.context.fillRect(x, 600-Y2, 20, Y2);
    board.context.fillStyle =  "#00ff00";
    board.context.fillText('Ta BARRE ostie', x+5, Y1+14); 
    board.context.closePath();

    

  }
}
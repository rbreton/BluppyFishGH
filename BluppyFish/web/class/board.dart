part of BluppyFish;

class Board {
  static const num X = 0;
  static const num Y = 0;

  CanvasElement canvas;
  CanvasRenderingContext2D context;
  bool etatGame = true;
  int timeOutStart = 0;

  num width;
  num height;
  num numGX = 0;
  num numGY = 0;
  num numStartGY = 0;
  num numGravity = .1;

  Bluppy bluppy;
  Pointage pointage;
  List lstBar = new List();
  

  Board(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    border();
    init();
  }
  void init() {
    bluppy = new Bluppy(this, 100, height / 2);
    pointage = new Pointage(this, 300, 300, 0);
    window.animationFrame.then(gameLoop);
    document.onMouseDown.listen(onMouseDownBoost);
  }
  void gameLoop(num delta) {
    if(etatGame && timeOutStart >= 100) {
      redraw();
      window.animationFrame.then(gameLoop);
    }
    timeOutStart++;
  }
  void border() {
    context.beginPath();
    context.rect(X, Y, width, height);
    context.fillText('Canvas Examples', 150, 100); // ---- voir comment faire pour qu'il reste seulement un temps donnee
    context.closePath();
    context.stroke();
  }
  void clear() {
    context.clearRect(X, Y, width, height);
    border();
  }  
  void onMouseDownBoost(e){
    numGY = 0;
    numStartGY = bluppy.y;
    numGravity = -.7;
  } 
  void redraw() {
    clear();
    bluppy.draw();
    if(bluppy.y <= numStartGY-10){
      numGravity = .1;
    }
    numGY += numGravity;
    if (bluppy.y + numGY > height) {
      endGame();
    }
    pointage.draw();
    pointage.point++;
    bluppy.x += numGX;
    bluppy.y += numGY;
    //Detection
    
  }
  void endGame(){
    etatGame = false;
    print('End');
  }
}
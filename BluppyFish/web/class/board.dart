part of BluppyFish;

class Board {
  static const num X = 0;
  static const num Y = 0;

  CanvasElement canvas;
  CanvasRenderingContext2D context;
  bool etatGame = false;

  num width;
  num height;
  num numGX = 0;
  num numGY = 0;
  num numStartGY = 0;
  num numGravity = .1;
  
  AudioElement aEBlupSound = querySelector('#blup');

  Bluppy bluppy;
  Pointage pointage;
  List lstBars = new List(3);
  
  var mouseUpListen;
  var mouseDownListen;
  Board(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    border();
    init();
  }
  void init(){
    context.beginPath();
    context.fillStyle = "#63b8ff";
    context.font = 'bold 45pt Arial';
    context.fillText('Bluppy Fish', 100, 100);
    context.font = '8pt Arial';
    context.closePath();
    mouseUpListen = document.querySelector('#btnNav').onMouseDown.listen(onMouseUp);
  }
  void initGame() {
    document.querySelector('#btnNav').classes.add("hidden");
    bluppy = new Bluppy(this, 100, height / 2);
    pointage = new Pointage(this, 420, 20, 0);
    for(int intI = 0; intI < 3; intI++){
      lstBars[intI] = new Bar(this, (600+(intI*200)));
    }
    window.animationFrame.then(gameLoop);
    mouseDownListen = document.querySelector('#canvas').onMouseDown.listen(onMouseDownBoost);
  }
  void gameLoop(num delta) {
    if(etatGame) {
      redraw();
      window.animationFrame.then(gameLoop);
    }
  }
  void border() {
    context.beginPath();
    context.rect(X, Y, width, height);
    context.closePath();
    context.stroke();
  }
  void clear() {
    context.clearRect(X, Y, width, height);
    border();
  }
  void onMouseUp(MouseEvent e){
    if(!etatGame){
      restartGame(e);
    }
  }
  void onMouseDownBoost(MouseEvent e){
    numGY = 0;
    numStartGY = bluppy.y;
    numGravity = -.7;
    aEBlupSound.play();
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
    for(int intJ = 0; intJ < lstBars.length; intJ++){
      lstBars[intJ].draw();
      lstBars[intJ].x = lstBars[intJ].x-1;
      if(lstBars[intJ].x <= -30){
        lstBars[intJ] = new Bar(this, 600); 
      }
      if(lstBars[intJ].x <= 120 && lstBars[intJ].x >= 60){
        if(bluppy.y >= lstBars[intJ].Y1 && bluppy.y <= 590-lstBars[intJ].Y2){
          if(!lstBars[intJ].etatCpt && lstBars[intJ].x <= 110){
            lstBars[intJ].etatCpt = true;
            pointage.point++;
          }
        }else{
          endGame();
        }
      }
    }
    pointage.draw();
    bluppy.x += numGX;
    bluppy.y += numGY;    
  }
  void restartGame(MouseEvent e){
    etatGame = true;
    initGame(); 
  }
  void endGame(){
    etatGame = false;
    document.querySelector('#btnNav').innerHtml = 'Restart';
    document.querySelector('#btnNav').classes.remove("hidden");
    numGY = 0;
    mouseDownListen.cancel();
  }
}
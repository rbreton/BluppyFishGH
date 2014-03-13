part of BluppyFish;

class Board {
  static const num X = 0;
  static const num Y = 0;

  CanvasElement canvas;
  CanvasRenderingContext2D context;

  num width;
  num height;
  num numGX = 0;
  num numGY = 0;
  num numGravity = .1;

  Bluppy bluppy;

  Board(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    
    border();

    init();
  }

  void init() {
    bluppy = new Bluppy(this, 100, 10);
    window.animationFrame.then(gameLoop);
    document.onMouseDown.listen(onMouseDownBoost);
  }

  void gameLoop(num delta) {
    if(redraw()) {
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
  
  void onMouseDownBoost(e){
    numGY = 0;
    bluppy.y -= 30;
  }
  
  bool redraw() {
    clear();

    bluppy.draw();
    
    numGY += numGravity;

    // The south side.
    if (bluppy.y + numGY > height) {
      return false;
    }

    bluppy.x += numGX;
    bluppy.y += numGY;
    return true;
  }

}
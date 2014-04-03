library BluppyFish;

import 'dart:html';
import 'dart:math';

part 'class/board.dart';
part 'class/bluppy.dart';
part 'class/pointage.dart';
part 'class/bar.dart';

void main() {
  CanvasElement canvas = querySelector('#canvas');
  Board board = new Board(canvas);
}




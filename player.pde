class Player {
  float _x, _y;
  Player(float x, float y) {
    _x = x;
    _y = y;
  }
  void update() {
    fill(255,255,255);
    ellipse(_x, _y, 20, 20);
  }
}


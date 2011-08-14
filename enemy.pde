class Enemy {
  float _x, _y;
  Player _player;
  Enemy(float x, float y, Player player) {
    _x = x;
    _y = y;
    _player = player;
  }
  void update() {
    fill(255, 100, 0);
    ellipse(_x, _y, 30, 30);
  }
}


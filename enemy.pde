class Enemy {
  float _x, _y;
  Player _player;
  int _unit_size;
  int _width;
  int _height;
  Enemy(float x, float y, int unit_size, Player player) {
    _x = x;
    _y = y;
    _width = 2;
    _height = 2;
    _player = player;
    _unit_size = unit_size;
  }
  void update() {
    fill(255, 100, 0);
    ellipse(_x * _unit_size, 
            _y * _unit_size, 
            _width * _unit_size, _height * _unit_size);
  }
}


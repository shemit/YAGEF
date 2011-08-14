class Enemy {
  float _x, _y;
  Player _player;
  int _unit_size;
  int _width;
  int _height;
  Enemy(float x, float y, int unit_size, Player player) {
    _x = x;
    _y = y;
    _width = 3;
    _height = 3;
    _player = player;
    _unit_size = unit_size;
  }
  void update() {
    fill(255, 100, 0);
    ellipse(_x * _unit_size + _unit_size * _width / 2, 
            _y * _unit_size + _unit_size * _height / 2, 
            _width * _unit_size, _height * _unit_size);
  }
}


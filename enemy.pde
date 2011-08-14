class Enemy extends Player{
  Player _player;
  Enemy(float x, float y, int width, int height, int unit_size, Player player) {
    super(x, y, width, height, unit_size)
    _player = player;
  }
  /*
  void update() {
    fill(255, 100, 0);
    ellipse(_x * _unit_size + _unit_size * _width / 2, 
            _y * _unit_size + _unit_size * _height / 2, 
            _width * _unit_size, _height * _unit_size);
  }
  */
}


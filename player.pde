class Player {
  int _x, _y;
  int _unit_size;
  int speed;
  int _height;
  int _width;
  Player(int x, int y, int unit_size) {
    _x = x;
    _y = y;
    _unit_size = unit_size;
    _height = 1;
    _width = 1;
    println("unit size is: " + _unit_size);
  }
  void update() {
    stroke(33);
    fill(255,255,255);
    ellipse(_x * _unit_size + (_unit_size * _width / 2), 
            _y * _unit_size + (_unit_size * _height / 2), 
            _unit_size, _unit_size);
  }
}


class Player {
  int _x, _y;
  int _pixel_x, _pixel_y;
  int _target_x, _target_y;
  int _unit_size;
  int speed;
  int _height;
  int _width;
  boolean _is_moving;

  // Initialize the player
  Player(int x, int y, int width, int height, int unit_size) {
    // Set its grid coordinates
    _x = x;
    _y = y;

    // Set its target position to be static at the moment
    _target_x = x;
    _target_y = y;

    // Currently, set the height and width of the player to be the unit
    // size of the level
    _height = height;
    _width = width;

    // Set the unit size (in pixels) to match with the level's
    _unit_size = unit_size;

    // Set its pixel position to align with the upper left corner pixel
    _pixel_x = _x * _unit_size + (_unit_size * _width / 2);
    _pixel_y = _y * _unit_size + (_unit_size * _height / 2);

    // Boolean that keeps track of movement
    _is_moving = false;
  }

  boolean has_reached_target() {
    target_pixel_x = _unit_size * (_target_x + _width / 2);
    target_pixel_y = _unit_size * (_target_y + _height / 2);
    return target_pixel_x == _pixel_x && target_pixel_y == _pixel_y;
  }

  void update() {
    stroke(33);
    fill(255,255,255);
    if (_is_moving) {
      if (has_reached_target()) {
        _x = _target_x;
        _y = _target_y;
        _is_moving = false;
      } else {
        _pixel_x += (_target_x - _x);
        _pixel_y += (_target_y - _y);
      }
    }
    ellipse(_pixel_x, 
            _pixel_y, 
            _width * _unit_size, _height * _unit_size);
  }
}


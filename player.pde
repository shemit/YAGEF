class Player {
  int _x, _y;
  int _pixel_x, _pixel_y;
  int _target_x, _target_y;
  int _unit_size;
  int speed;
  int _height;
  int _width;
  ArrayList _enemies;
  boolean _is_moving;
  boolean _is_stalking;
  String _name;

  // Initialize the player
  Player(int x, int y, int width, int height, int unit_size, 
         ArrayList enemies) {
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

    _enemies = enemies;

    // Boolean that keeps track of movement
    _is_moving = false;

    // Boolean that enables/disables stalking AI
    _is_stalking = false;
  }

  boolean has_reached_target() {
    target_pixel_x = _unit_size * (_target_x + _width / 2);
    target_pixel_y = _unit_size * (_target_y + _height / 2);
    return target_pixel_x == _pixel_x && target_pixel_y == _pixel_y;
  }
  

  Player get_enemy(int index) {
    return (Player)_enemies.get(index);
  }

  float distance_to(Player player) {
    return pow((float)
               pow(player._x - _x, 2) + pow(player._y - _y, 2), .5);
  }

  Player find_closest_enemy() {
    int closest_enemy_index = 0;
    for (int i = 0; i < _enemies.size() - 1; i++) {
      closest_enemy_index = 
        distance_to(get_enemy(i)) > distance_to(get_enemy(i+1)) ? i : i + 1; 
    }
    return get_enemy(closest_enemy_index);
  }

  void set_enemy_as_target(Player enemy) {
    int dx = _x - enemy._target_x;
    int dy = _y - enemy._target_y;

    if (dx != 0) {
      _target_x -= dx / abs(dx);
      _is_moving = true;
      return;
    }

    if (dy != 0) {
      _target_y -= dy / abs(dy);
      _is_moving = true;
      return;
    }

  }

  // Method for following enemies
  void stalk() {
    Player enemy = find_closest_enemy();
    set_enemy_as_target(enemy);
    println("Stalking player: " + enemy._name +
            ", x is: " + _x + 
            ", y is: " + _y + 
            ", target_x is: " +_target_x +
            ", target_y is: " + _target_y );
  }

  void update() {
    stroke(33);
    fill(255,255,255);
    if (_is_moving) {
      if (has_reached_target()) {
        _x = _target_x;
        _y = _target_y;
        _is_moving = false;
        if (_is_stalking) stalk();
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


class Level {

  String _name;
  Player _player;
  ArrayList _enemies;
  int _grid_unit_size = 20;
  int _pixel_width = 500;
  int _pixel_height = 500;
  int[][] _grid;

  Level(String name) {
    _name = name;
    _enemies = new ArrayList();
  }

  void init() {
    _player = new Player(2, 2, _grid_unit_size);
    _enemies.add( new Enemy(4, 4, _grid_unit_size, _player));
    _grid = new 
       int[_pixel_width/_grid_unit_size][_pixel_height/_grid_unit_size];
  }

  void set_player(Player player) {
    _player = player;
  }

  void set_enemies(ArrayList enemies) {
    _enemies = enemies;
  }

  void add_enemy(Enemy enemy) {
    _enemies.add(enemy);
  }

  void grid() {
    stroke(200);
    strokeWeight(1);
    for (int i=0; i <= 500; i = i + 20) {
      line(0, i, 500, i);
      line(i, 0, i, 500);
    }
  }

  void update() {
    background(255);
    if (keyPressed == true) {
      if (key == 'w') {
        if (!_player._is_moving) {
          _player._is_moving = true;
          _player._target_y--;
        }
      }
      if (key == 's') {
        if (!_player._is_moving) {
          _player._is_moving = true;
          _player._target_y++;
        }
      }
      if (key == 'a') {
        if (!_player._is_moving) {
          _player._is_moving = true;
          _player._target_x--;
        }
      }
      if (key == 'd') {
        if (!_player._is_moving) {
          _player._is_moving = true;
          _player._target_x++;
        }
      }
    }
    grid();
    _player.update();
    for (int i = 0; i < _enemies.size(); i++) {
      Enemy enemy = (Enemy)_enemies.get(i);
      enemy.update();
    }
  }

}

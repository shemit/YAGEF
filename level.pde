class Level {

  String _name;
  Player _player;
  ArrayList _enemies;

  Level(String name) {
    _name = name;
    _enemies = new ArrayList();
  }

  void init(Player player) {
    _player = player;
  }

  void set_enemies(ArrayList enemies) {
    _enemies = enemies;
  }

  void add_enemy(Enemy enemy) {
    _enemies.add(enemy);
  }

  void update() {
    if (keyPressed == true) {
      background(255);
      if (key == 'w') {
        _player._y--;
      }
      if (key == 's') {
        _player._y++;
      }
      if (key == 'a') {
        _player._x--;
      }
      if (key == 'd') {
        _player._x++;
      }
    }
    _player.update();
    for (int i = 0; i < _enemies.size(); i++) {
      Enemy enemy = (Enemy)_enemies.get(i);
      enemy.update();
    }
  }

}


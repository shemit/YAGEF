class Level {
  String name;
  Player player;
  ArrayList enemies;

  Level(String lev_name) {
    name = lev_name;
  }
  void init(Player init_player) {
    player = init_player;
  }
  void set_enemies(ArrayList init_enemies) {
    enemies.add(init_enemies);
  }
  void add_enemy(Enemy an_enemy) {
    enemies.add(an_enemy);
  }
  void update() {
    player.update();
    for (int i = 0; i < enemies.size(); i++) {
      enemies[i].update();
    }
  }
}


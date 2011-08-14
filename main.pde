Player player = new Player(100, 100);
Enemy enemy = new Enemy(100, 200, player);
Level level = new Level("Hello Level");

void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  fill(0);
  level.init(player);
  level.add_enemy(enemy);
}

void draw() {
  level.update();
}

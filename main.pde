Player player = new Player(100, 100);
Enemy enemy = new Enemy(100, 200);
void setup() {
  size(500, 500);
  stroke(0);
  fill(0);
}

void draw() {
  player.update();
  enemy.update();
}

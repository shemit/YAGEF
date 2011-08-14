Level level = new Level("Hello Level");

void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  fill(0);
  level.init();
}

void draw() {
  level.update();
}

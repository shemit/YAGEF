class Enemy {
  float x, y;
  Enemy(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }
  void update() {
    fill(255, 100, 0);
    ellipse(x, y, 30, 30);
  }
}


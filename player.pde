class Player {
  float x, y;
  Player(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }
  void update() {
    fill(255,255,255);
    ellipse(x, y, 20, 20);
  }
}


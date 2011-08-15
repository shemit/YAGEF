class Enemy extends Player{
  Player _player;
  Enemy(float x, float y, int width, int height, int unit_size, Player player) {
    super(x, y, width, height, unit_size)
    _player = player;
  }
}


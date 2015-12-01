class Character {

  PVector _charSpeed;
  PVector _charLocation;
  PVector _gravity;

  Character () {
    _charLocation = new PVector(50, height/1.5);
    _charSpeed = new PVector(1, 0.5);
    _gravity = new PVector(0, 0.3);
  }

  void charMove () {
    if (keyPressed) {
      if (keyCode == LEFT || key == 'a') {
        _charLocation.x = _charLocation.x - _charSpeed.x;
      }
      if (keyCode == RIGHT || key == 'd') {
        _charLocation.x = _charLocation.x + _charSpeed.x;
      }
      if (keyCode == UP || key == 'w') {
        _charLocation.y = _charLocation.y - _charSpeed.y;
      }
    }
  }
}
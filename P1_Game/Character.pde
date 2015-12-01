Object colObject;

class Character {

  PVector _charSpeed;
  PVector _charLocation;
  PVector _gravity;
  PImage _charImage;

  Character () {
    _charLocation = new PVector(50, height/1.5);
    _charSpeed = new PVector(1, 0.5);
    _gravity = new PVector(0, 0.5);
    _charImage = loadImage("charTest.png");
  }
  
  void charDisplay () {
    image(_charImage, _charLocation.x, _charLocation.y);
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
        if (_charLocation.y-(colObject.objectImageHeight()*1.5) > _charLocation.y) {
          _charLocation.y = _charLocation.y + _gravity.y;
        }
      }
    }
  }
  
  void charEdges () {
    if (_charLocation.x < 0) {
      _charLocation.x = 0;
    } else if (_charLocation.x > width-_charImage.width) {
      _charLocation.x = width - _charImage.width;
    }
    if (_charLocation.y > height/1.5+_charImage.height){
      _charLocation.y = height/1.5+_charImage.height;
    }
    if (_charLocation.x < colObject.objectLocationX()+colObject.objectImageWidth()) {
      _charLocation.x = colObject.objectLocationX()+colObject.objectImageWidth();
    }
    if (_charLocation.x + _charImage.width > colObject.objectLocationX()) {
      _charLocation.x = colObject.objectLocationX() - _charImage.width;
    }
    if (_charLocation.y + _charImage.height > colObject.objectLocationY()) {
      _charLocation.y = colObject.objectLocationY() - _charImage.height;
    }
  }
}
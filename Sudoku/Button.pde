class Button {
  PVector pos;
  int sizeX, sizeY;
  String text;
  color textColor;
  Button(int x, int y, int sizeX, int sizeY, String text) {
    pos = new PVector(x, y);
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.text = text;
    this.textColor = color(255,255,255);
  }
  
  Button(int x, int y, int sizeX, int sizeY, String text, color textColor) {
    pos = new PVector(x, y);
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.text = text;
    this.textColor = textColor;
  }
  boolean pressed() {

    if (mousePressed && mouseX > this.pos.x && mouseX < this.pos.x + this.sizeX && mouseY > this.pos.y && mouseY < this.pos.y + this.sizeY) {
      return true;
    }
    return false;
  }

  boolean hovered() {
    if (!mousePressed && mouseX > this.pos.x && mouseX < this.pos.x + this.sizeX && mouseY > this.pos.y && mouseY < this.pos.y + this.sizeY) {
      return true;
    }
    return false;
  }

  void render() {
    fill(80);
    if (hovered()) {
      fill(120);
    } 
    strokeWeight(1);
    rect(pos.x, pos.y, sizeX, sizeY);
    fill(textColor);
    textSize(20);
    textAlign(CENTER,CENTER);
    text(text, pos.x+sizeX/2, pos.y+sizeY/2);
  }
}

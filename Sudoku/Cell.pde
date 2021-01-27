class Cell {
  PVector pos;
  int ans;
  int assignedValue;
  int size;
  int selected;
  IntList notes;

  Cell(PVector _pos, int _size) {
    pos = _pos;
    size = _size;
    notes = new IntList();
  }

  void render() {
    //fill(255);
    //rect(pos.x,pos.y,size,size);
    if (selected==1) {
      fill(150, 100);
      rect(pos.x, pos.y, size-2, size-2);
    }
    if (assignedValue != 0) { //only display text if value is not 0
      fill(0);
      textSize(size/2);
      textAlign(CENTER, CENTER);
      text(assignedValue, pos.x+size/2, pos.y+size/2);
    }else{
      for(int i: notes){
        textSize(size/4);
        text(i,pos.x+size*0.25+(i-1)%3*size*0.25,pos.y+size*0.25+(i-1)/3*size*0.25);
      }
    }
  }
}

class Hex {
  //maybe make these floats if im not too lazy
  public int wide = 10;
  int xpos = 0;
  int ypos = 0;
  int heavy = 2;
  
  public Hex(int _wide, int _xpos, int _ypos, int _heavy) {
    wide = _wide;
    xpos = _xpos;
    ypos = _ypos;
    heavy = _heavy;
  }
  
  public void show() {
    fill(255);
    stroke(0);
    strokeWeight(heavy);
    
    pushMatrix();
    translate(xpos, ypos);
    beginShape();
    vertex(0, wide/2);
    vertex(wide*1/4, wide);
    vertex(wide*3/4, wide);
    vertex(wide, wide/2);
    vertex(wide*3/4, 0);
    vertex(wide*1/4, 0);
    vertex(0, wide/2);
    endShape();
    popMatrix();
  }
}

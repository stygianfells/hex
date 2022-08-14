class Line {
  int Length = 10;
  private int heavy = 2;
  private int xpos = 0;
  private int ypos = 0;

  public Line(int _Length, int _xpos, int _ypos, int _heavy) {
    Length = _Length;
    heavy = _heavy;
    xpos = _xpos;
    ypos = _ypos;
  }

  public void show() {
    noFill();
    stroke(0);
    strokeWeight(heavy);
    pushMatrix();
    translate(0, 0);
    line(xpos, ypos, xpos+Length, ypos);
    popMatrix();
  }
}

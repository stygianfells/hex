class Button {
  boolean clicked;
  color colour, highlighted;
  float x, y, w, h;
  String text;

  public Button(color colourP, color highlightedP, float xP, float yP, float wP, float hP, String textP) {
    colour = colourP;
    highlighted = highlightedP;
    x = xP;
    y = yP;
    w = wP;
    h = hP;
    text = textP;
  }

  void show() {
    textAlign(CENTER, CENTER);
    noStroke();
    fill(colour);
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
      fill(highlighted);
    }
    rect(x, y, w, h);
    fill(255);
    text(text, x+w/2, y+h/2);

    if (released && mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) clicked = !clicked;
  }
}

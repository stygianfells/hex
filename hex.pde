
//get hexed
//hexadecimal? lol

Hex hextorBerlioz;
ArrayList<Hex> hexlist;
ArrayList<Line> linelist;
int varwidth, linelength;
boolean released, hadpressed;
Button up, down;
color dark, light;

void setup() {
  size(875, 900);
  //hextorBerlioz = new Hex(20, 15, 15, 2);
  hexlist = new ArrayList<Hex>();
  linelist = new ArrayList<Line>();
  varwidth = 40;
  linelength = varwidth/2;
  dark = #818181;
  light = #C1C1C1;
  up = new Button(light, dark, 50, 150, 100, 50, "^");
  down = new Button(light, dark, 50, 275, 100, 50, "v");
}


void draw() {
  background(255);
  //hextorBerlioz.show();

  for (int p = 0; p <= height/varwidth; p++) {
    //fill(255);
    //rect(200, 25, width-250, height-50);
    
    strokeWeight(2);
    stroke(0);
    line(0, varwidth*p-varwidth*1/2, width, varwidth*p-varwidth*1/2);

    for (int i = 0; i < width/varwidth; i++) {
      hexlist.add(new Hex(varwidth, i*(varwidth*3/2), varwidth*p, 2));
    }
  }

  for (int j = 0; j < hexlist.size(); j++) {
    hexlist.get(j).show();
    //linelist.get(j).show();
  }

  //jank
  //could probably realign the hexes after but
  //meh
  fill(255);
  noStroke();
  rect(0, 0, width, 25);
  rect(0, 0, 200, height);
  rect(0, height-25, width, 25);
  rect(825, 0, 75, height);

  noFill();
  stroke(0);
  strokeWeight(5);
  rect(200, 25, width-250, height-50);

  up.show();
  down.show();

  //fill(255);
  if (up.clicked) varwidth += 10;
  up.clicked = false;
  if (down.clicked) varwidth -= 10;
  down.clicked = false;

  //what the fuckkkkk why is it so laggy when i implement the loop
  //also whats with the lines disappearing when you change sizes
  //i am so fucking done ugh
  //i need to find a way to not have the new size hexes overlap with the old ones
  //but howwwwwww ahdsjfklsahdfj

  if (mousePressed) hadpressed = true;
  if (hadpressed && !mousePressed) {
    released = true;
    hadpressed = false;
  } else if (released) released = false;
}

void save(File f) {
  if (f !=null) {
    PImage canvas = get(200, 25, width-250, height-50);
    canvas.save(f.getAbsolutePath());
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    selectOutput("Congrats you've got a combat map", "save");
  }
}

//make buttons n input slots
//input and configure/compile button?
//much to think about

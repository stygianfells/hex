//get hexed
//hexadecimal? lol

Hex hextorBerlioz;
ArrayList<Hex> hexlist;
ArrayList<Line> linelist;
int varwidth, linelength;

void setup() {
  size(875, 900);
  //hextorBerlioz = new Hex(20, 15, 15, 2);
  hexlist = new ArrayList<Hex>();
  linelist = new ArrayList<Line>();
  varwidth = 40;
  linelength = varwidth/2;
}

void draw() {
  background(255);
  //hextorBerlioz.show();
  
  for (int p = 0; p <= height/varwidth; p++) {
    strokeWeight(2);
    line(0, varwidth*p-varwidth*1/2, width, varwidth*p-varwidth*1/2);

    for (int i = 0; i < width/varwidth; i++) {
      hexlist.add(new Hex(varwidth, i*(varwidth*3/2), varwidth*p, 2));
    }
  }

  for (int j = 0; j < hexlist.size(); j++) {
    hexlist.get(j).show();
    //linelist.get(j).show();
  }
  
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
  
}

void save(File f) {
  if (f !=null) {
    PImage canvas = get(170, 1, width-1230, height-800);
    canvas.save(f.getAbsolutePath());
  }
}

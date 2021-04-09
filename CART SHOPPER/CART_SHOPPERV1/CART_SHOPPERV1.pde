// Daniel Shiffman
// https://thecodingtrain.com/CodingChallenges/147-chrome-dinosaur.html
// https://youtu.be/l0HoJHc-63Q

// Google Chrome Dinosaur Game (Unicorn, run!)
// https://editor.p5js.org/codingtrain/sketches/v3thq2uhk

Toon toon;
PImage TOimg;
PImage cImg;
PImage bImg;
ArrayList<Covid> covids = new ArrayList<Covid>();


void mousePressed() {
  covids.add(new Covid());
}

void setup() {
  size(600, 390);
  TOimg = loadImage("toon.png");
  cImg = loadImage("covid.png");
  bImg = loadImage("store.jpg");
  toon = new Toon();
}


void keyPressed() {
  if (key == ' ') {
    toon.jump();
  }
}

void draw() {

  if (random(1) < 0.005) {
    covids.add(new Covid());
  }

  background(0); {
  // for some reason, whenever I add the moving background the toon sprite won't work
  // but hey, at least the image still moves!
  //image(bImg, -frameCount * 2 % width, 0);
  //bImg.resize(1200, 390); }
  for (Covid t : covids) {
    t.move();
    t.show();
    
    //IDK WHY ITS GIVING ME THIS ISSUE EITHER, basically collision isn't working
    //if (toon.hits(covids)) {
   // print("game over");
   // noLoop();
    }
  }
  //these two last lines are what are giving me the error message when the background is added in
  toon.show();
  toon.move();
}

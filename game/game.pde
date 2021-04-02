float x;
float y;
PImage store;

void setup(){
size (600, 390);
store = loadImage("store.jpg");
frameRate(60);
x= width;
y= 0;

}


void draw(){
background(0);
// fiddling around with image placement
//x = x-2;
//imageMode(CENTER);
image(store, -frameCount * 2 % width, 0);
store.resize(1200, 390);




}

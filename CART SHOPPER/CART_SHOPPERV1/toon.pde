class Toon {
  int r;
  float x, y, vy, gravity;
  Toon() {
    this.r = 100;
    this.x = 40;
    this.y = height - this.r;
    this.vy = 0;
    this.gravity = 3;
  }

  void jump() {
    if (this.y == height - this.r) {
      this.vy = -35;
    }
  }

  boolean hits(Covid covid) {
    float x1 = this.x + this.r * 0.5;
    float y1 = this.y + this.r * 0.5;
    float x2 = covid.x + covid.r * 0.5;
    float y2 = covid.y + covid.r * 0.5;
    return collideCircleCircle(x1, y1, this.r, x2, y2, covid.r);
  }

  void move() {
    this.y += this.vy;
    this.vy += this.gravity;
    this.y = constrain(this.y, 0, height - this.r);
  }

  void show() {
    image(TOimg, this.x, this.y, this.r, this.r);

    // fill(255, 50);
    // ellipseMode(CORNER);
    // ellipse(this.x, this.y, this.r, this.r);
  }
}

//Ported from p5.collide2D
//https://github.com/bmoren/p5.collide2D/blob/e13a6c80e3fccdd0c3cbfed7a99b514d1097f46d/p5.collide2d.js#L53-L59

// when collision is added in the code, it gives me an error on this line "unexpected token: boolean"
boolean collideCircleCircle (float x, float y, float d, float x2, float y2, float d2) {
  //2d
  if ( dist(x, y, x2, y2) <= (d/2)+(d2/2) ) {
    return true;
  }
  return false;
};

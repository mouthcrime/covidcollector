class Covid {
  int r;
  float x, y;
  Covid() {
    this.r = 75;
    this.x = width;
    this.y = height - this.r;
  }

  void move() {
    this.x -= 10;
  }

  void show() {
    image(cImg, this.x, this.y, this.r, this.r);

    // fill(255, 50);
    // ellipseMode(CORNER);
    // ellipse(this.x, this.y, this.r, this.r);
  }
}

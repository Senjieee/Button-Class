class Button {
  
  int x, y, w, h;
  boolean touchingMouse() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } else {
      return false;
    }
  }
  boolean clicked;
  color highlight, normal;
  String text;
  PImage img;
  
  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false; 
  }
  
  Button(PImage pic,int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w= _w;
    h = _h;
    highlight = high;
    normal = norm;
    clicked = false;
    img = pic;
  }
  
  void show() {
    drawRect();
    drawLabel();
    checkForClick();
  }
  
  void drawRect() {
    rectMode(CENTER);
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    
    if (touchingMouse()) {
      fill(highlight);
      stroke(tactile);
    } else {
      fill(normal);
      stroke(black);
    }
    strokeWeight(5);
    rect(x, y, w, h, 30);
  }
  
  void drawLabel() {
    if (touchingMouse()) {
      fill(normal);
    } else {
      fill(highlight);
    }
    if (img == null) {
      textSize((h+w)/7);
      text(text, x, y);
    } else {
      image(img, x, y, w, h);
    }
  }
  
  void checkForClick() {
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}

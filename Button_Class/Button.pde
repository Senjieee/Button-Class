class Button {
  
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  
  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y= _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }
  void show() {
    rectMode(CENTER);
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(5);
    rect(x, y, w, h, 30);
    fill(black);
    textSize(50);
    text(text, x, y);
    
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(normal);
    } else {
      fill(highlight);
    }
    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}

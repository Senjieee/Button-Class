//Johnny Geng
//1-2
//Oct 20 2022
//Button Class

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);
color glow = color(238, 245, 153);
color tactile = color(209, 199, 107);

boolean mouseReleased;
boolean wasPressed;

Button[] Buttons;

color background; 

PImage buttonpic;

void setup() {
  size(800, 800);
  background = white;
  Buttons = new Button[4];
  Buttons[0] = new Button("RED", 200, 200, 200, 150, red, glow);
  Buttons[1] = new Button("BLUE", 200, 400, 200, 150, blue, glow);
  Buttons[2] = new Button("YELLOW", 400, 650, 600, 200, yellow, glow);
  Buttons[3] = new Button("GREEN", 550, 300, 400, 350, green, glow);
}

void draw() {
  click();
  background(background);
  
  int i = 0;
   while(i < 4) {
     Buttons[i].show();
     if(Buttons[i].clicked) {
       background = Buttons[i].normal;
     }
     i++;
   }
}

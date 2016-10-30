//Nailah Duliepre. 
//This is a makeup game consisting of buttons that control eye color, eyebrows, lipstick, hair, and skin tone.
//The player will be able to control music, reset the game, and save the image that they make.

import ddf.minim.*;

Minim minim;
AudioPlayer player;

int skinSelect = 0;
int browSelect = 0;
int eyeSelect = 0;
int lipsSelect = 0;
int hairSelect = 0;

int skinX = 5;
int skinY = 123;
int browX = 145;
int browY = 237;
int eyeX = 150;
int eyeY = 260;
int lipsX = 196;
int lipsY = 370;
int hairX = 81;
int hairY = 111;

PImage background;
PImage skin1, skin2, skin3, skin4;
PImage button1, button2, button3, button4;
PImage brow1, brow2, brow3, brow4;
PImage lash1, blush1;
PImage eye1, eye2, eye3, eye4;
PImage lips1, lips2, lips3, lips4, lips5, lips6, lips7;
PImage hair1, hair2, hair3, hair4;

PFont Poetsenone;

void setup() {  
  size (850, 576);

  //music
  minim = new Minim(this);
  player = minim.loadFile("music.mp3");
  player.play();

  //text
  Poetsenone = createFont ("Poetsenone.ttf", 30);
  textFont (Poetsenone);

  //BG
  background = loadImage("background.png");

  //load images
  lash1 = loadImage("lash1.png");
  blush1 = loadImage("blush1.png");
  button1 = loadImage("button1.png");
  button2 = loadImage("button2.png");
  button3 = loadImage("button3.png");
  button4 = loadImage("button4.png");
  skin1 = loadImage("skin1.png");
  skin2 = loadImage("skin2.png");
  skin3 = loadImage("skin3.png");
  skin4 = loadImage("skin4.png");
  brow1 = loadImage("brow1.png");
  brow2 = loadImage("brow2.png");
  brow3 = loadImage("brow3.png");
  brow4 = loadImage("brow4.png");
  eye1 = loadImage("eye1.png");
  eye2 = loadImage("eye2.png");
  eye3 = loadImage("eye3.png");
  eye4 = loadImage("eye4.png");
  lips1 = loadImage("lips1.png");
  lips2 = loadImage("lips2.png");
  lips3 = loadImage("lips3.png");
  lips4 = loadImage("lips4.png");
  lips5 = loadImage("lips5.png");
  lips6 = loadImage("lips6.png");
  lips7 = loadImage("lips7.png");
  hair1 = loadImage("hair1.png");
  hair2 = loadImage("hair2.png");
  hair3 = loadImage("hair3.png");
  hair4 = loadImage("hair4.png");
}

void draw () {
  //main image
  image (background, 0, 0, width, height);
  image (skin1, 5, 123);
  image (blush1, 150, 293);

  //reference rect (490, 485, 80, 20);

  //text
  fill(0);
  textSize(30);
  text("Pick and Choose!", 520, 220);
  textSize(20);
  text("Help!", 10, 20);


  //text hover
  if (dist(mouseX, mouseY, 20, 0)<40) {
    fill(0);
    text("'spacebar' to reset",70, 20);
    text("'s' to save", 70, 40);
    text("'p' to pause music", 70, 60);
    text("'r' to resume music", 70, 80);
  }

  //buttons
  image (button1, 400, 20, 50, 50);
  image (button2, 400, 80, 50, 50);
  image (button3, 400, 140, 50, 50);
  image (button4, 400, 200, 50, 50);
  image (brow1, 460, 30);
  image (brow2, 460, 60);
  image (brow3, 660, 30);
  image (brow4, 658, 60);
  image (eye1, 460, 90);
  image (eye2, 460, 130);
  image (eye3, 660, 90);
  image (eye4, 658, 130);
  image (lips1, 500, 250);
  image (lips2, 600, 250);
  image (lips3, 700, 250);
  image (lips4, 438, 300);
  image (lips5, 550, 300);
  image (lips6, 650, 300);
  image (lips7, 750, 300);
  image (hair1, 390, 340, 100, 125);
  image (hair2, 500, 340, 100, 125);
  image (hair3, 610, 340, 100, 125);
  image (hair4, 720, 340, 100, 125);
  
  //these are the directions for what the code to do when the buttons are clicked
  if (mousePressed) {
    if (mouseX > 460 && mouseX < 635 && mouseY > 23 && mouseY < 55) {
      browSelect = 1;
      println ("brow1");
    } else if (mouseX > 460 && mouseX < 635 && mouseY > 60 && mouseY < 80) {
      browSelect = 2;
      println ("brow2");
    } else if (mouseX > 660 && mouseX < 835 && mouseY > 30 && mouseY < 50) {
      browSelect = 3;
      println ("brow3");
    } else if (mouseX > 660 && mouseX < 835 && mouseY > 60 && mouseY < 80) {
      browSelect = 4;
      println ("brow4");
    } else if (mouseX > 460 && mouseX < 630 && mouseY > 90 && mouseY < 125) {
      eyeSelect = 1;
      image (lash1, 126, 253);
      println ("eye1");
    } else if (mouseX > 460 && mouseX < 630 && mouseY > 130 && mouseY < 165) {
      eyeSelect = 2;
      image (lash1, 126, 253);
      println ("eye2");
    } else if (mouseX > 660 && mouseX < 830 && mouseY > 90 && mouseY < 125) {
      eyeSelect = 3;
      image (lash1, 126, 253);
      println ("eye3");
    } else if (mouseX > 660 && mouseX < 830 && mouseY > 90 && mouseY < 165) {
      eyeSelect = 4;
      image (lash1, 126, 253);
      println ("eye4");
    } else if (mouseX > 500 && mouseX < 570 && mouseY > 240 && mouseY < 275) {
      lipsSelect = 1;
      println ("lips1");
    } else if (mouseX > 600 && mouseX < 670 && mouseY > 240 && mouseY < 275) {
      lipsSelect = 2;
      println ("lips2");
    } else if (mouseX > 700 && mouseX < 770 && mouseY > 240 && mouseY < 275) {
      lipsSelect = 3;
      println ("lips3");
    } else if (mouseX > 440 && mouseX < 510 && mouseY > 290 && mouseY < 325) {
      lipsSelect = 4;
      println ("lips4");
    } else if (mouseX > 550 && mouseX < 620 && mouseY > 290 && mouseY < 325) {
      lipsSelect = 5;
      println ("lips5");
    } else if (mouseX > 650 && mouseX < 720 && mouseY > 290 && mouseY < 325) {
      lipsSelect = 6;
      println ("lips6");
    } else if (mouseX > 750 && mouseX < 820 && mouseY > 290 && mouseY < 325) {
      lipsSelect = 7;
      println ("lips7");
    } else if (mouseX > 390 && mouseX < 490 && mouseY > 340 && mouseY < 465) {
      hairSelect = 1;
      println ("hair1");
    } else if (mouseX > 500 && mouseX < 600 && mouseY > 340 && mouseY < 465) {
      hairSelect = 2;
      println ("hair2");
    } else if (mouseX > 610 && mouseX < 710 && mouseY > 340 && mouseY < 465) {
      hairSelect = 3;
      println ("hair3");
    } else if (mouseX > 720 && mouseX < 820 && mouseY > 340 && mouseY < 465) {
      hairSelect = 4;
      println ("hair4");
    } else if (mouseX > 410 && mouseX < 440 && mouseY > 20 && mouseY < 70) {
      skinSelect = 1;
      println ("skin1");
      image (blush1, 150, 293);
    } else if (mouseX > 410 && mouseX < 440 && mouseY > 80 && mouseY < 130) {
      skinSelect = 2;
      println ("skin2");
      image (blush1, 150, 293);
    } else if (mouseX > 410 && mouseX < 440 && mouseY > 140 && mouseY < 190) {
      skinSelect = 3;
      println ("skin3");
      image (blush1, 150, 293);
    } else if (mouseX > 410 && mouseX < 740 && mouseY > 200 && mouseY < 260) {
      skinSelect = 4;
      println ("skin4");
      image (blush1, 150, 293);
    }
  }
  tools();
//these are the key commands for resetting, saving, and pausing and playing music

}
void keyPressed() {
  if (key == ' ') {
    hairSelect = 0;
    browSelect = 0;
    skinSelect = 0;
    eyeSelect = 0;
    lipsSelect = 0;
    image (blush1, 150, 293);
    println("spacebar");
  }
  if (key== 's') {
    save("image.jpg");
  }
  if (key == 'p') {
    player.pause();
  } else if (key == 'r') {
    player.play();
  }
}
//the are a set of instructions for the code to do when you click in that area

void tools() {

  switch(skinSelect) {
  case 1:
    image(skin1, skinX, skinY);
    image (blush1, 150, 293);
    break;
  case 2:
    image(skin2, skinX, skinY);
    image (blush1, 150, 293);
    break;
  case 3:
    image(skin3, skinX, skinY);
    image (blush1, 150, 293);
    break;
  case 4:
    image(skin4, skinX, skinY);
    image (blush1, 150, 293);
    break;
  }
  switch (lipsSelect) {
  case 1:
    image(lips1, lipsX, lipsY);
    break;
  case 2:
    image(lips2, lipsX, lipsY);
    break;
  case 3:
    image(lips3, lipsX, lipsY);
    break;
  case 4:
    image(lips4, lipsX, lipsY);
    break;
  case 5:
    image(lips5, lipsX, lipsY);
    break;
  case 6:
    image(lips6, lipsX, lipsY);
    break;
  case 7:
    image(lips7, lipsX, lipsY);
    break;
  } 
  switch (eyeSelect) {
  case 1:
    image(eye1, eyeX, eyeY);
    image (lash1, 126, 253);
    break;
  case 2:
    image(eye2, eyeX, eyeY);
    image (lash1, 126, 253);
    break;
  case 3:
    image(eye3, eyeX, eyeY);
    image (lash1, 126, 253);
    break;
  case 4:
    image(eye4, eyeX, eyeY);
    image (lash1, 126, 253);
    break;
  }
  switch (browSelect) {
  case 1:
    image(brow1, browX, browY);
    break;
  case 2:
    image(brow2, browX, browY);
    break;
  case 3:
    image(brow3, browX, browY);
    break;
  case 4:
    image(brow4, browX, browY);
    break;
  }

  switch (hairSelect) {
  case 1:
    image(hair1, hairX, hairY);
    break;
  case 2:
    image(hair2, hairX, hairY);
    break;
  case 3:
    image(hair3, hairX, hairY);
    break;
  case 4: 
    image(hair4, hairX, hairY);
    break;
  }
}
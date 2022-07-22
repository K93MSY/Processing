int boxx=0;
int value=0;
void setup(){
  size(600,1000);
  background(180,180,255);
  frameRate(60);
  boxx=30;
}

void stage(){
    stroke(0);
    strokeWeight(1);
//    for(int i=0;i>5;i++){
      line(0,0,0,height);
      line(width/4,0,width/4,height);
      line(width/4*2,0,width/4*2,height);
      line(width/4*3,0,width/4*3,height);
      line(width/4*4,0,width/4*4,height);
//    }
  
  fill(0,255,0);
  rect(0,height-80,width,80);
}

/*
void keyPressed() {
if (key == 'a') {
  if(boxx>0){
    boxx-=10;
  }
} else if (key == 'd') {
  if(boxx<700){
    boxx+=10;
  }
} else if (key == 'w') {
value = 3;
}
}
*/
void handle(){
  boxx=mouseX;
  fill(255,0,0);
  rect(boxx-width/8,height-130,width/4,30);
}

void home(){
  //background
  fill(180,180,255);
  rect(0,0,width,height);
  
  //text
  fill(0);
  textSize(40);
  text("Press Button", width/2-105, height/7*3);
  
  //start button
  fill(0,255,0);
  rect( width/2-100, height/3*2,200,100);
  fill(0);
  textSize(40);
  text("Start", width/2-50, 725);
  
  if(width/2-100<=mouseX && width/2+100>=mouseX && height/3*2<=mouseY && height/3*2+100>=mouseY){
    fill(0,255,0);
    rect( width/2-105, height/3*2-5,210,110);
    fill(0);
    textSize(40);
    text("Start", width/2-50, 725);
    if (mousePressed) {
      value=1;
    }
  }
//  if (keyPressed && key == 'z') {
//      value=1;
//    }
  
}

void play(){
  fill(180,180,255);
  rect(0,0,width,height);
  stage();
//  keyPressed();
  handle();
  
  int lane=3;
  fill(0,0,255);
  rect(width/4*lane+width/15, 170, width/8, 200, 40, 40, 40, 40);
}



void draw(){
  home();
  if(value==1){
    play();
  }
}

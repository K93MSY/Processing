int boxx=0;
int value;
void setup(){
  size(800,800);
  background(180,180,255);
  frameRate(30);
  boxx=30;
}

void stage(){
  fill(0,255,0);
  rect(0,720,width,80);
}

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


void draw(){
  fill(180,180,255);
  rect(0,0,width,height);
  stage();
  keyPressed();
  fill(255,0,0);
  rect(boxx,670,100,50);
 
}

int speed;
int frame;
int num[] = new int[3];
int scene;

void setup(){
  size(500,500);
  speed = 5;
  frame = 0;
  scene = 1;
  num[0] = int(random(1,9));
  num[1] = int(random(1,9));
  num[2] = int(random(1,9));
}

void draw(){
  background(255);
  fill(0);
  
  frame++;
  
  if(scene == 1){
      if(frame % speed == 0){
        for(int i=0;i<3;i++){
           num[i]++;
         if(num[i] == 10){
          num[i] = 1;
        }
      }
    }
    
    fill(255,0,0);
    rect(78,165,80,130);
    fill(0);
    textSize(150);
    text(num[0],80,275);
  
    textSize(150);
    text(num[1],210,275);
  
    textSize(150);
    text(num[2],340,275);
    
    if(keyPressed){
      if(key == ' '){
        scene++;
      }
    }
  }else if(scene == 2){
      if(frame % speed == 0){
        for(int i=0;i<2;i++){
           num[i+1]++;
         if(num[i+1] == 10){
          num[i+1] = 1;
        }
      }
    }
    
    fill(255,0,0);
    rect(208,165,80,130);
    fill(0);
    textSize(150);
    text(num[0],80,275);
  
    textSize(150);
    text(num[1],210,275);
  
    textSize(150);
    text(num[2],340,275);
    
    if(keyPressed){
      if(key == ' '){
        scene++;
      }
    }
  }else if(scene == 3){
      if(frame % speed == 0){
           num[2]++;
         if(num[2] == 10){
          num[2] = 1;
      }
    }
    
    fill(255,0,0);
    rect(338,165,80,130);
    fill(0);
    textSize(150);
    text(num[0],80,275);
  
    textSize(150);
    text(num[1],210,275);
  
    textSize(150);
    text(num[2],340,275);
    
    if(keyPressed){
      if(key == ' '){
        scene++;
      }
    }
  }else if(scene == 4){
    fill(0);
    textSize(150);
    text(num[0],80,275);
  
    textSize(150);
    text(num[1],210,275);
  
    textSize(150);
    text(num[2],340,275);
  }
  
}

float rc=255;
float gc=250;
float bc=240;

float mx;
float my;
float radius = 0;
float border = 100;

boolean overbox1=false;
boolean locked1=false;
boolean overbox2=false;
boolean locked2=false;

void setup(){
  size(screenWidth, screenHeight);
  background(255,250,240);
}

void draw(){
  noStroke();
  fill(200);
 
  rect(0,0, border+50,screenHeight);
  rect(0,0, screenWidth,border);
  rect(screenWidth-border+50,0, border-50,screenHeight);
  rect(0,screenHeight-border, screenWidth,border);
 
  if (mouseX>20 && mouseX<60 && mouseY>20 && mouseY <60){
    overbox1 = true;
    if(!locked1){
      fill(155,0,0);
    }
  }else{
    overbox1=false;
    fill(255,69,0);
  }
  noStroke();
  rect(20,20,40,40);
 
  if (mouseX>20 && mouseX<80 && mouseY>80 && mouseY <120){
    overbox2 = true;
    if(!locked2){
      fill(155,65,0);
    }
  }else{
    fill(255,165,0);
    overbox2=false;
  }
 
  noStroke();
  rect(20,80,40,40);
 
}

void mousePressed(){
  if(overbox1){
    locked1 = true;
   
    rc = 255;
    gc = 69;
    bc = 0;
    fill(0);
  } else {locked1=false;
  }
 
  if(overbox2){
    locked2 = true;
    fill(0);
    rc = 255;
    gc = 165;
    bc = 0;
  } else {locked2=false;
  }
}

void mouseDragged(){
  mx = mx+(mouseX-mx)*0.1;
  my = my+(mouseY-my)*0.1;
 
 if(mouseX-mx>0){
   
    if (radius >= 30){
      radius = radius - (mouseX-mx)*0.01;
    }else{
      radius = radius + (mouseX-mx)*0.01;
    }
  }else if(mouseX-mx<0){
    if (radius >= 30){
      radius = radius - (mouseX-mx)*0.01;
    }else{
      radius = radius + (mouseX-mx)*0.01;
    }
  } else {
    radius = 0;
  }
  mx = constrain(mx, 100, screenWidth - 100);
  my = constrain(my, 100, screenHeight - 100);
  noStroke();
  fill(rc,gc,bc);

   
  ellipse(mx,my,radius,radius);

}
void mouseReleased(){
  locked1 = false;
  locked2 = false;
}
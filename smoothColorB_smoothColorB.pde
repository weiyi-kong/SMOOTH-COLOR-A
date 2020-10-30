float r;

void setup(){
  size(600,600);
  background(255);
  smooth();
}


void draw(){
  //background(0);
  strokeWeight(1);
  for(int y=200;y>=100;y-=2){
 
    float r = int((sin((frameCount)*0.001+y)+1)*100);
    float g = int((sin((frameCount)*0.004+y)+1)*100);
    float b = int((sin((frameCount)*0.009+y)+1)*100);
    stroke(r,g,b,5);
  }
 
  for(int x=0;x<=200;x++){
   
    int wave=int(sin((frameCount)*0.05+x)*600);
    int w=int(sin((frameCount)*0.055+x)*600);
 
    //line(width+wave,0,width+w,height/2);
    //line(width+wave,height/2,width+w,height);
    noFill();
    curve(0, height/2+height/6, width+wave, 0, width+w, height/2, 0, -height/6);
   
  }
  for(int x=0;x<=200;x++){
   
    int wavy=int(sin((frameCount)*0.01+x)*600);
    int wy=int(sin((frameCount)*0.015+x)*600);
 
   
    noFill();
    curve(0, height+height/6, width+wy, height/2, width+wavy, height, 0, height/2-height/6);
   
  }
}

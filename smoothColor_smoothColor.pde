float r;

void setup(){
  size(600,600);
  background(255);
  smooth();
}

void draw(){
  //background(0);
  strokeWeight(1);
  for(int y=100;y<=200;y++){
 
    float r = int((sin((frameCount)*0.001+y)+1)*100);
    float g = int((sin((frameCount)*0.004+y)+1)*100);
    float b = int((sin((frameCount)*0.009+y)+1)*100);
    stroke(r,g,b,5);
  }
 
  for(int x=0;x<=200;x++){
   
    float wave=int(sin((frameCount)*0.05+x)*600);
    float w=int(sin((frameCount)*0.055+x)*600);
 
    line(0,wave,width,w);
   
  }
}
public int base;
public int shade;
public void setup(){
  size(800,800);
  noStroke();
  background(0);
}
public void draw(){
  shade=255;
  fill(shade);
  base=mouseX;
  if(base>400)
  hleft(400,400,300);
  else
  h(400,400,300);
}
public void h(int x, int y, int d){
  if(d<=base){
  ellipse(x,y,d,d);
  }
  else{
    ellipse(x,y,d,d);
    shade-=35;
    fill(shade);
    h(x-d/4,y,d/2);
  }
}
public void hleft(int x, int y, int d){
  if(d<=(800-base)){
  ellipse(x,y,d,d);
  }
  else{
    ellipse(x,y,d,d);
    shade-=35;
    fill(shade);
    hleft(x+d/4,y,d/2);
  }
}

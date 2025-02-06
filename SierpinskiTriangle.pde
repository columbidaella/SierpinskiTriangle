public int base;
public int fill;
public void setup(){
  size(800,800);
  background(0);
  noStroke();
}
public void draw(){
  fill=255;
  fill(fill);
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
    fill-=35;
    fill(fill);
    h(x-d/4,y,d/2);
  }
}
public void hleft(int x, int y, int d){
  if(d<=(800-base)){
  ellipse(x,y,d,d);
  }
  else{
    ellipse(x,y,d,d);
    fill-=35;
    fill(fill);
    hleft(x+d/4,y,d/2);
  }
}

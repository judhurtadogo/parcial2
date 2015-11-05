public class Carro{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float z;
  
  Carro(color colorCarro, float xposicion, float yposicion, float velocidad){
  c=colorCarro;
  xpos=xposicion;
  ypos=yposicion;
  xspeed=velocidad;
 
  }
  
  void display(){
  noStroke();
  fill(c);
  ellipse(xpos+35,ypos+height/(2*n),height/n,height/n);
  }
  void move(){
     xpos=xpos+xspeed;
     if(xpos-height/(2*n)>width){
       xpos=0;
     }
  }}
  
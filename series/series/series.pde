perfectos perf;
primos prim;

int[] VCT;

void setup() {
  
  prim = new primos();
  perf = new perfectos();
  size(800, 800);
  
  noSmooth();
  fill(126);
  background(255);
  int cont = 1;
  VCT = new int[10];
  for(int i=0; true; i++){
    if(prim.Div(i+2).length==1){
      
       VCT[cont-1]=(i+2);
       cont++;    
    }
    if(cont==VCT.length+1){
      break;
    }
  }
 
}
int n=0;

void keyPressed(){
if (key == 'b'){
     String a=prim.author();
     println(a);
     String d=prim.description();
     println(d);
   } 
   
 if (key == 'p'){
     String a=perf.author();
     println(a);
     String d=perf.description();
     println(d);
   } 
   
  
}
 
void mouseClicked(){
if (mouseButton == RIGHT){
n--;
}
if (mouseButton == LEFT){
n++;
}
   if (key == 'b'){
     prim.display(n);
   }
   if (key == 'p'){
    int s= perf.compute(n);
    println (s); 
   } 
   
   
}

void draw() {
      stroke(0,255,255);
      line(0, 400, 1000, 400);
      line(206, 0, 206, 1000);
      
    }
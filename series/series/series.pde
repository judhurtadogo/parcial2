int j=0;
int n=10;
Perrin perr;
perfectos perf;
primos prim;
Carro [] car= new Carro[n];
  
int[] VCT;

void setup() {
 
  prim = new primos();
  perf = new perfectos();
  size(800, 800);
  
  noSmooth();
  fill(126);
  background(0);
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
   colorMode(HSB,360);
  perr = new Perrin(); 
  for(int i=1;i<=n;i++){
     if(n==2){
        car[i-1] = new Carro(color(90,360,360*(2-i)),width/(2*n),(i-1)*(height/n),perr.compute(i));     
     }
     else{
        car[i-1] = new Carro(color(90,360,(360*perr.compute(i))/perr.compute(n)),width/(2*n),(i-1)*(height/n),perr.compute(i));
    }
   }
   colorMode(RGB,255);
}

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
  
 if(key=='c'){
    println("\n",perr.author());
    println(perr.description());
    println("El ",n,"º num  o de Perrin es ", perr.compute(n));
    printArray(perr.toArray(n));
    }
   
  
}
 
void mouseClicked(){
if (mouseButton == RIGHT){
j--;
}
if (mouseButton == LEFT){
j++;
}
   if (key == 'b'){
     prim.display(j);
   }
   if (key == 'p'){
    int s= perf.compute(j);
    println (s); 
   } 
   
}

void draw() {
      stroke(0,255,255);
      line(0, 400, 1000, 400);
      line(206, 0, 206, 1000);
      
      if(key=='c'){ 
       background(255,0,0);
       for(int i=1;i<=n;i++){
         car[i-1].display();
         car[i-1].move();
         }
       }
   

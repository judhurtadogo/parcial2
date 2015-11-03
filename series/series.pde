Perfectos perf;
Sequence seq;


Primos prim;

int[] VCT;

void setup() {
  
  prim = new Primos();
  
  size(800, 1000);
  noSmooth();
  fill(126);
  background(255);
  int tam=0, valor = 6, cont = 0;
  int[] vct = new int[6];
  for(int i=0; true; i++){
    if(prim.Div(i+2).length==1){
       println(i+2);
       VCT[cont]=(i+2);
       cont++;    
    }
    if(cont==VCT.length+1){
      break;
    }
  }
}

void draw() {
  stroke(0,255,255);
  line(0, 400, 1000, 400);
  line(206, 0, 206, 1000);
  
    
}

int n=0, radiov=0;

void mouseClicked(){
  int radio =0;
  float randR =0, randG =0, randB =0; 
  randR = random(0,255);
  randG = random(0,255);
  randB = random(0,255);
  if(n<VCT.length){
    radio=VCT[n]*20;  
    stroke(randR,randG,randB);
    noFill();
    ellipse(206,400,VCT[n]*20,VCT[n]*20);
  }
  
    for(int i=0; i<23; i++){
      if(i%2==0){
        stroke(randR,randG,randB);
        noFill();
        arc(206+(i*radio)+radio/2,400,radio,radio,PI,2*PI);
      }else{
        stroke(randR,randG,randB);
        noFill();
        arc(206+(i*radio)+radio/2,400,radio,radio,0,PI);  
        }
      }
    n++;
    radiov=radio;
}
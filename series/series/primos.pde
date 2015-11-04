class primos extends perfectos{
  
  String author(){
    String autor="Autor: Euclides";
    return autor;
  }

  String description(){
    String descripcion = "un número primo es un número natural mayor que 1 que puede descomponerse solamente en dos factores distintos: él mismo y el 1"; 
    return descripcion;
  }
  
  int [] Div(int n){
    int tam=0;
    if(n==1){
      int [] b= new int[1];
      b[0] =1;
      return b;
    }
    for(int j=1;j<n;j++){
    int res=n%j;
    if (res==0){
      tam++;
    }
    }
    int[] v = new int[tam];
    int p=0;
    for (int k=1;k<n;k++){
        int res=n%k;
        if (res==0){
        v[p]=k;
        p++;
        }
    }

  return v;
  
  }
   void display(int n){
    
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
}

}
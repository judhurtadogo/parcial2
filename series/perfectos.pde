class perfectos extends sequence{
  
  String author(){
    String autor="Autor: Euclides de Megara";
    return autor;
  }

  String description(){
    String descripcion = "Un númeroperfecto es un número natural que es igual a la suma de sus divisores propios positivos,. Dicho de otra forma, un número perfecto es aquel que es amigo de sí mismo."; 
    return descripcion;
  }

//muestra el enesimo  termino 
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

int compute(int n){
  int i=0, N=0;
  for(i=1;true;i++){
     int [] c = Div(i);
        int ene=0;
      for(int j=0; j<c.length; j++){
       ene = c[j]+ene;
    }
    if (ene==i){
        N+=1;
      }
  if (N==n){
  break;
  }
  }
  return i;
 }
 
 void imprimir(int[] c){
   println("imprimiendo vector c");
   for(int i=0; i<c.length; i++){
      println("c[",i,"]",c[i]);
   }
 }
 }
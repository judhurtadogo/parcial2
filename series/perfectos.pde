class Perfectos extends Sequence {
  
  Perfectos(int n){
    compute(n);
  }  
  
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
    //println(v[],"tam");
    return v;
  }

int compute(int n){
  int i=0, N=0;
  for(i=1;true;i++){
     int [] c = Div(i);
        int ene=0;
       // println(c.length,"l");
      for(int j=0; j<c.length; j++){
       ene = c[j]+ene;
    }
    if (ene==i){
        N+=1;
        //println(N);
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

//prueba un numero ingresado
      /* String proof(int n){
         String ex = "c";
         int res, sum;
         sum=0; res=0;
         for(int i=1; i<n; i++){
            res=n%i;
          if(res==0){ 
               sum+=i;
              }
          }
          if (sum==n){
              ex="el numero ingresado es un numero perfecto"; 
          }
          if (sum==1){
            ex= "el numero ingresado es un numero primo";
          }
          if (sum!=n){
            if (sum!=1){
          ex = "el numero ingresado no entra en ninguna de las secuencias probadas"; 
            }}
          
          return ex;
}*/


}
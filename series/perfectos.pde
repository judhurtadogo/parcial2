class Perfectos extends Sequence {
String author(){
   String autor="Autor: Euclides de Megara";
  return autor;
}

String description(){
String descripcion = "Un númeroperfecto es un número natural que es igual a la suma de sus divisores propios positivos,. Dicho de otra forma, un número perfecto es aquel que es amigo de sí mismo."; 
return descripcion;
}

//muestra el enesimo  termino 

int compute(int n){
  int p=0, i, res=0;
int k=0;
int cont=1, j=999999999;
for(cont=1; cont<=j; cont++){
        p=cont;
       int sum=0;
        for(i=1; i<p; i++){
            res=p%i;
          if(res==0){ 
               sum+=i;
              }
        }
if(sum==p){
  k++;
  if(k==n){
  j=0;
  }}
}
return p;  
}
//prueba un numero ingresado
       String proof(int n){
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
}


}
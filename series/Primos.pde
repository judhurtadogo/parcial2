class Primos extends Perfectos{
  
  String author(){
    String autor="Autor: Pitágoras";
    return autor;
  }

  String description(){
    String descripcion = "Un númeroperfecto es un número natural que es igual a la suma de sus divisores propios positivos,. Dicho de otra forma, un número perfecto es aquel que es amigo de sí mismo."; 
    return descripcion;
  }
  
  nt [] Div(int n){
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
}
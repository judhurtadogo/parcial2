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
}
class Perrin extends sequence {
String author(){
   String autor="Autor: Édouard Lucas";
  return autor;
}

String description(){
String descripcion = "Un número de Perrin es un número natural que es igual a la suma del penúltimo y antepenultimo número de Perrin antes que él mismo. La secuencia numérica comienza con 3, 0 y 2."; 
return descripcion;
}

//muestra el enesimo  termino 

int compute(int n){ 
  int u;
  if(n==1){
    u=3;
    return u;
  }
  if(n==2){
    u=0;
    return u;
  }
  if(n==3){
    u=2;
    return u;
  }
  else{
    u=compute(n-2)+compute(n-3);
  return u;
  }  

  }
}
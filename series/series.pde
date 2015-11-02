Perfectos perf;
Sequence seq;

void setup() {
  //size(720,640);
  perf = new Perfectos();
  noLoop();
 // println(perf.author());
  //println(perf.description());
  //println("el n numero perfecto es ", perf.compute(2));
  //println(perf.proof(13));
  //int [] c = perf.Div(4);
  int ene= perf.compute(6);
  println(ene);
}

void draw() {
  //background(0);
  
}
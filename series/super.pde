abstract class sequence{
  abstract String author();
  
  abstract String description();
  
  abstract int compute(int n);
  
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++){
      seq[i] = compute(i+1);
    }
    return seq;
  }
}
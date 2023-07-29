class Performer {
  void perform() => print("Lets Perform!!!");
}

mixin Drumer {
  void playDrumer() => print("Yayyy Playing Drum");
  void perform() => playDrumer();
}

mixin Guitarist {
  void playGuitar() => print("Yayyy Playing Guitar");
  void perform() => playGuitar();
}

mixin Guitarist2 {
  void playGuitar() => print("Yayyy Playing Guitar2");
  void perform() => playGuitar();
}

mixin Fluet {
  void playFluet() => print("Yayyy Playing Fluet");
  void perform() => playFluet();
}

class Musician extends Performer with Guitarist2, Guitarist, Drumer, Fluet {
  // void music() {}
}

void main() {
  Musician mus = Musician();
  mus.playDrumer();
  // mus.playGuitar();
  mus.perform();
}

// Performer with Guitarist2, Guitarist, Drumer, Fluet
//  ----------------
//  |   Performer  |
//  ---------------- 
//  ----------------
//  |   Guitarist2  |
//  ---------------- 
//  ----------------
//  |   Guitarist  |
//  ---------------- 
//  ----------------
//  |   Performer  |
//  ---------------- 
//  ----------------
//  |   Drumer  |
//  ---------------- 
//  ----------------
//  |   Fluet       |
//   ---------------- 
//  ----------------
//  |   Musician    |
//   ---------------- 

// so closer to musician is fluet so method id fluet gets implemeted
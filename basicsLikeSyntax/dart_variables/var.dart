// var vs dynamic

void main(List<String> arg) {
  var vi = 6; // int  vi = 6;
  var vs = "Malhar";
  var vd = 9.89;
  var vi1; // dyanamic vi1 (assigned null)

  print("\nruntime type of var keyword at declaration.");
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vd.runtimeType);
  print(vi1.runtimeType);

  dynamic di = 8;
  dynamic ds = "Malhar dada";
  dynamic dd = 8.9088;
  dynamic di1;

  print("\nruntime type of dynamic keyword at declaration.");
  print(di.runtimeType);
  print(ds.runtimeType);
  print(dd.runtimeType);
  print(di1.runtimeType);

  List<dynamic> myList = [1, 2.344, "Malhar", 'c', true];
  print(myList);
  print(myList.runtimeType);
}

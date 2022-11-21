void main(List<String> args) {
  String name = "zero";
  print(name);

  dynamic v1ar;
  v1ar = 12;
  v1ar = "zero";
  print(v1ar.runtimeType);

  var nama = "zero";
  // nama = 12; error var only can declare once
  print(nama.runtimeType);

  final x; //final can set later
  x = 12; //variable can't redeclare but only can change the value
  // x = 13; final only can set once

  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];
  array1[0] = 12;
  print(array1);
  // array2[0] = 12;
  // print(array2);//error const can't change the value and can't change the varibale

  // var Secvalue = getValue();
  late var value = getValue(); //late variable is execused when only called
  print('variable di buat');
  print(value); //in here
}

String getValue() {
  print('getValue() di panggil');
  return 'Zero';
}

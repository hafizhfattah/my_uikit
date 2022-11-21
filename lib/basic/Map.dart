void main() {
  Map<dynamic, dynamic> monster = {
    'eyes': 2, 
    'foot': 2, 
    'hand': 2
  };
  //key : value
  print(monster["eyes"]);
  //mengakses key di map
  print(monster.keys);
  //menampilkan key di map
  print(monster.values);
  //menampilakan value di map
  print(monster.containsKey("eyes"));
  //mengechek key di map
  print(monster.containsValue(1));
  //mengechek value di map
  print(monster.length);
  //mengechek panjang map
  print(monster.remove("eyes"));
  //menghapus value di map
  print(monster);
  monster["eyes"] = 20;
  print(monster);
}

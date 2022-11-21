void main(List<String> args) {
  var a = 10;
  //increment and decrement
  var i = 0;
  var j = i++; //j = 0,i++
  var k = ++i; //j = (i++)
  print(j);
  print(k);

  //a = a + 10
  print(a += 10);
}

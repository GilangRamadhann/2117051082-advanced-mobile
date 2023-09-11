import 'dart:io';

late String nama;
void main() {
  // String? nama;
  // int umur = 3;
  // final String? nama = stdin.readLineSync();
  // nama = "Gilang"

  // String? nama;
  // print(nama!.length);

  // String? message;

  // String text;

  // if (message == null){
  //   text = "Empty";
  // } else{
  //   text = "message";
  // }

  // String text = message ?? "Empty";
  // print(text);

  List angka = [1, 2, 3, 4, 5];
  printList(angka);
}

void printList(List l){
  for (var i = 0; i < l.length; i++)
  print(l[i]);
}
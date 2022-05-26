import 'dart:io';
import 'casestudycalc.dart';

void main() {
  for (var x = 1; x <= 30; x++) {
    dynamic input;
    var myStorage = new Storage();
    var myParcel = new Parcel();

    print("\n" + "Menu: ");
    print("1. Parcel entry");
    print("2. Storage view");
    print("3. Exit");

    stdout.write("Input the number: ");
    input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      print("\n" + "-Parcel Entry-");
      stdout.write("Enter the house number: ");
      int housenum = int.parse(stdin.readLineSync()!);

      myStorage.setStorenum(housenum);
      myStorage.storecalc();

      stdout.write("Enter the parcel number: ");
      int parnum = int.parse(stdin.readLineSync()!);

      myParcel.setParnum(parnum);
      myParcel.parcalc();
      //n
    } else if (input == 2) {
    } else if (input == 3) {
      print("\n" + "Thank you !");
      break;
    } else {
      print("\n" + "Wrong input");
    }
  }
}
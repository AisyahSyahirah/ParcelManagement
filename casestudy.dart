// Nur Aisyah Syahirah binti Osman 1819266
// Yasmin Hana binti Zulkifli 1914198 

import 'dart:io';
import 'casestudycalc.dart';

void main() {
    dynamic input;
    var myStorage = new Storage();
    //var myParcel = new Parcel();

    for (var x = 1; x >= 1; x++) {
      print("\n" + "Menu: ");
      print("1. Parcel entry");
      print("2. Storage view");
      print("3. Exit");

      stdout.write("Input the number: ");
      input = int.parse(stdin.readLineSync()!);

      if (input == 1) {
        print("\n" + "-Parcel Entry-");
        stdout.write("Enter the house number: ");
        var housenum = int.parse(stdin.readLineSync()!);

        stdout.write("Enter the parcel number: ");
        var parnum = int.parse(stdin.readLineSync()!);

        //store to List
        myStorage.storecalc(housenum,parnum);

      } else if (input == 2) {
          myStorage.display();
      } else if (input == 3) {
        print("\n" + "Thank you !");
        break;
      } else {
        print("\n" + "Wrong input");
      }
  }
}


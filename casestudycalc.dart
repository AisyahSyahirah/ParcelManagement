import 'dart:ffi';
import 'dart:io';

class Storage {
  dynamic housenum;

  Storage() {
    housenum = List.generate(30, (_) => List.generate(5, (_) => 0));
  }

  //setter
  void setStorenum(dynamic housenum) {
    this.housenum = housenum;
  }

  //getter
  String getStorenum() {
    return housenum;
  }

  //function
  void storecalc(var house,var num) {
    var i=0;
    if (housenum[house-1][4] != 0) {
      print('Storage full!!!');
    }else{
      for (var j = i; j < i+1; j++) {
        if (housenum[house-1][j] == 0) {
          housenum[house-1][j] = num;
        }
        else{
          i++;
        }
      }
    }
    
    print(housenum[house-1]);
  }

  void display() {
    for (var i = 1; i <= 30; i++) {
      var newhousenum = housenum[i-1];
      print('House [$i] = $newhousenum');
    }
  }
}


// class Storage {
//   late var housenum;

//   Storage() {
//     housenum = '';
//   }

//   //setter
//   void setStorenum(int housenum) {
//     List housenum = [
//       1,
//       2,
//       3,
//       4,
//       5,
//       6,
//       7,
//       8,
//       9,
//       10,
//       11,
//       12,
//       13,
//       14,
//       15,
//       16,
//       17,
//       18,
//       19,
//       20,
//       21,
//       22,
//       23,
//       24,
//       25,
//       26,
//       27,
//       28,
//       29,
//       30
//     ];
//     this.housenum = housenum;
//     //
//   }

//   //getter
//   String getStorenum() {
//     return housenum;
//   }

//   //function
//   void storecalc(var i) {
//     display(housenum);
//   }

//   void display(var storeoutput) {
//     print(storeoutput);
//   }
// }

// class Parcel {
//   late var parnum;

//   Parcel() {
//     parnum = List.generate(5, (_) => 0);
//   }

//   //setter
//   void setParnum(int parnum) {
//     this.parnum = parnum;
//   }

//   //getter
//   String getParnum() {
//     return parnum;
//   }

//   //function
//   void parcalc() {
//     var parstore;
//     var entered_at = new DateTime.now();
//     var overdue = entered_at.add(new Duration(hours: 48));

//     for (var x = 0; x < 5; x++) {
//       parstore = [0, 0, 0, 0, 0];
//       parstore.add(parnum);
//     }
//     print(parstore);

//     display("This parcel is entered at $entered_at");
//     display("Please collect the parcel before $overdue");
//   }

//   void display(var paroutput) {
//     print(paroutput);
//   }
// }

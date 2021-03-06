// Nur Aisyah Syahirah binti Osman 1819266
// Yasmin Hana binti Zulkifli 1914198 


// Nur Aisyah Syahirah binti Osman 1819266
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
  // Yasmin Hana binti Zulkifli 1914198 
  void storecalc(var house, var num) {
    var i = 0;
    if (housenum[house - 1][4] != 0) {
      print('Storage full!!!');
    } else {
      for (var j = i; j < i + 1; j++) {
        if (housenum[house - 1][j] == 0) {
          housenum[house - 1][j] = num;
        } else {
          i++;
        }
      }
    }

    print(housenum[house - 1]);

    var entered_at = new DateTime.now();
    var overdued = entered_at.add(new Duration(hours: 48));

    print("Date and time parcel entry is at $entered_at");
    print("Parcel will be returned to sender after $overdued");
  }

  // Nur Aisyah Syahirah binti Osman 1819266
  void display() {
    for (var i = 1; i <= 30; i++) {
      var newhousenum = housenum[i - 1];
      print('House [$i] = $newhousenum');
    }
  }
}

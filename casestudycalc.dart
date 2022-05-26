class Storage {
  late var storenum;

  Storage() {
    storenum = '';
  }

  //setter
  void setStorenum(int storenum) {
    this.storenum = storenum;
  }

  //getter
  String getStorenum() {
    return storenum;
  }

  //function
  void storecalc() {
    //n
    List housenum = [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30
    ];

    print(housenum);
  }

  void display(var storeoutput) {
    print(storeoutput);
  }
}

class Parcel {
  late var parnum;

  Parcel() {
    parnum = List.generate(5, (_) => 0);
  }

  //setter
  void setParnum(int parnum) {
    this.parnum = parnum;
  }

  //getter
  String getParnum() {
    return parnum;
  }

  //function
  void parcalc() {
    var parstore;
    var entered_at = new DateTime.now();
    var overdue = entered_at.add(new Duration(hours: 48));

    for (var x = 0; x < 5; x++) {
      parstore = [0, 0, 0, 0, 0];
      parstore.add(parnum);
    }
    print(parstore);

    display("This parcel is entered at $entered_at");
    display("Please collect the parcel before $overdue");
  }

  void display(var paroutput) {
    print(paroutput);
  }
}


class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: topUp method
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: pay method
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

// Part 2: StudentCard
class StudentCard extends BusCard {
  int _discount = 0;


   // Constructor
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }


  // Override showInfo
 
    super.showInfo(),
    print('studnt card: $_discount% off');
  }

  // TODO 4: Override pay
  @override
  void pay {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }


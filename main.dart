class busCard {
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

  void pay(int fare) {
    if (fare <= 0) {
      print('Invalid fare');
    } else if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}
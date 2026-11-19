class Buscard{
  String _owner ='';
  int-balance =0;
  // Construction
  Buscard (String owner, int balance){
_owner = owner;
-balance = balance
  }
    // Getter for owner
String get owner{
  return _owner;
}
// TODO 1: Getter for balance
int get Balance{
  reruen -balance;
}
// Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
 } else 
      owner = newName;
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
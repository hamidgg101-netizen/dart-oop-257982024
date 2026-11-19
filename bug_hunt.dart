class Phone {
  String _brand = '';
  int _battery = 0;

  // Constructor
  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  // Getter for battery
  int get battery {
    return _battery;
  }


// Setter for battery
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    }
  }

  // Restart method
  void restart() {
    print('Restarting phone');
  }
}

// SmartPhone class using inheritance
class SmartPhone extends Phone {
  String _system = '';

  // Constructor
  SmartPhone(String brand, int battery, String system)
      : super(brand, battery) {
    _system = system;
  }

  // Override restart method
  @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  // Create a Phone object
  Phone p = new Phone('Tecno', 50);

  // Set battery to 100
  p.battery = 100;

  // Print battery level
  print(p.battery);
}
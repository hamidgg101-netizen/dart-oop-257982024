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
    return-battery;
  }


class SmartPhone extends Phone {
  String _system = '';

  SmartPhone(String brand, int battery, String system) {
    _system = system;
  }

  @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  Phone p = new Phone('Tecno', 50);
  p.battery = 100;
  print(p.battery());
}
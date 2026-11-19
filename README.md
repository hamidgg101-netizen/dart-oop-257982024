# Dart OOP Assignment: Kigali Bus Card

**Name:** Hamid Ahmed Elmahdi Ahmed  
**Student ID:** 257982024

## My Numbers

- D = 98
- L = 8
- Starting balance = 1980 RWF
- Bus fare = 298 RWF
- Student discount = 18%

## Output of main.dart

```text
Error: name too short
Owner: Hamid | Balance: 1980 RWF
Owner: Hamid Ahmed Elmahdi Ahmed | Balance: 1980 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 298 RWF
Paid 298 RWF
Owner: Hamid Ahmed Elmahdi Ahmed | Balance: 3384 RWF
Student discount: 53 RWF
Paid 245 RWF
Owner: Hamid Ahmed Elmahdi Ahmed | Balance: 1735 RWF
Student card: 18% off
```

## Part 1: Why no setter for balance?

There is no setter for balance because users should not change the balance directly. The balance must only change through `topUp()` and `pay()` methods. This prevents unauthorized changes and keeps the balance correct.

## Part 2: What does ~/ do?

The `~/` operator performs integer division. It divides two numbers and removes the decimal part.

- `237 * 17 / 100` gives `40.29`.
- `237 * 17 ~/ 100` gives `40`.

The `/` operator returns a decimal result, while `~/` returns an integer.

## Part 4: Bug table

| Bug | The line | Why it is wrong | Your fix |
|---|---|---|---|
| 1 | `String _brand;` and `int _battery;` | Non-nullable fields must have initial values. | Initialize them with `''` and `0`. |
| 2 | `SmartPhone(String brand, int battery, String system) {` | The parent constructor requires brand and battery. | Add `: super(brand, battery)`. |
| 3 | `@override void restart()` | The parent class does not have a restart method to override. | Add a restart method to the Phone class. |
| 4 | Missing battery setter | There is no setter to change the battery value. | Add a setter that accepts values from 0 to 100. |
| 5 | `print(p.battery());` | Battery is a getter, not a method. | Change it to `print(p.battery);`. |

### Not a bug

The line `p.battery = 100;` is correct after adding the battery setter. It sets the battery value to 100, and the setter checks that the value is between 0 and 100.


## Part 5: Predict the Output

### My prediction

```text
-5
5
```

### Why?

I thought that assigning -5 to `a.items` would change the number of items to -5 because I assumed the setter accepts the assigned value directly.

For BigBag, I predicted 5 because each call to `add()` adds two items. After two calls, the total becomes 4, and adding one more makes it 5.

### Real output

```text
1
5
```

### Was I right?

My first prediction was partially incorrect. I learned that the setter checks whether the value is greater than or equal to zero. Therefore, it rejects -5 and keeps the previous value, which is 1. My second prediction was correct.
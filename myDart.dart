import 'dart:io';

myFunction(str) {
  print('My First Function in Dart = $str');
}

sumFunction(num1, [num2 = 0]) {
  var intNum1 = int.parse(num1);
  var intNum2 = int.parse(num2);
  return intNum1 + intNum2;
}

fizzbuzz() {
  var num = 1;
  while (num <= 100) {
    if (num % 15 == 0) {
      print('$num = fizzbuzz');
    } else if (num % 5 == 0) {
      print('$num = buzz');
    } else if (num % 3 == 0) {
      print('$num = fizz');
    } else {
      print(num);
    }
    num++;
  }
}

void main() {
  print('hello world');
  fizzbuzz();
  // var text = stdin.readLineSync();
  // myFunction(text);
  // print('Enter first value');
  // var num1 = stdin.readLineSync();
  // print('Enter second value');
  // var num2 = stdin.readLineSync();
  // print(sumFunction(num1, num2));
  // var arr = [];
  // arr.add('ghani');
  // print(arr);
  // arr.add('larik');
  // print(arr);
  // arr.addAll(['weel', 12, 's', true]);
  // print(arr);
  // print(arr[0].runtimeType);
  // print(arr[3].runtimeType);
  // print(arr[4].runtimeType);
  // print(arr[5].runtimeType);

  // var newArr = [];
  // newArr.addAll([1, 2, 3, 4, 4, 4, 3, 2, 2, 1, 4, 5, 6, 7, 5, 4, 3]);
  // for (var ar in newArr) {
  //   print("newArr ind = $ar");
  // }
  // var txtArr = ['123', '123', '123', 'fge', 'fge'];
  // print(newArr);
  // newArr.remove(2);
  // txtArr.removeRange(1,3);
  // print(txtArr);

  // var firstMap = {
  //   'hey': 'hello',
  //   'name': 'Abdul Ghani',
  //   'phoneNumbers': {
  //     'zong': 021331242,
  //     'ufone': 023149231,
  //     'telenor': 0123298219
  //   }
  // };

  // print(firstMap['phoneNumbers']);
  // print(firstMap.keys.length);
  // print(firstMap.values);
  // print(firstMap.length);
  // firstMap.remove('phoneNumbers');
  // print(firstMap);
  // firstMap.clear();
  // print(firstMap);
}

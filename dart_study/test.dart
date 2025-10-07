void main() {
  String text = "Hello, World!";

  // int num1 = 10;
  // int num2 = 20;
  //
  // int sum = add(num1, num2);
  //
  // print(sum);
  //
  // int num = 100;
  //
  // switch (num) {
  //   case 1:
  //     print('Switch $num');
  //   case 2:
  //     print('Switch $num');
  //   case 3:
  //     print('Switch $num');
  //   case 4:
  //     print('Switch $num');
  //   case 5:
  //     print('Switch $num');
  //     print('Answer');
  //   case > 100:
  //     print('Wow big number!! $num');
  //   default:
  //     print('Not 1 ~ 5');
  // }

  // todo(3);
  // todo(1);
  // todo(5);
  
  todo2().listen((event) {});
}

// int add(int num1, int num2) {
//   return num1 + num2;
// }
//
// void loop() {
//   List<int> index = [0, 1, 2, 3, 4, 5];
//
//   for(final i in index) {
//     print(i);
//   }
//
//   bool isRunning = true;
//   int count = 0;
//
//   while (isRunning) {
//     if (count >= 5) {
//       isRunning = false;
//     }
//   }
// }

// Future<void> todo(int second) async {
//   await Future.delayed(Duration(seconds: second));
//   print("Todo $second");
// }

Stream<int> todo2() async* {
  int counter = 0;
  
  while(counter <= 10) {
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print("Todo $counter");
    yield counter;
  }
  
  print("Todo is Done");
}
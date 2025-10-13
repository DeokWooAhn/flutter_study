import 'package:flutter/material.dart';

/// StatefulWidget은 상태를 가지는 위젯입니다. 상태는 위젯이 변경될 수 있는 데이터를 나타냅니다. 예를 들어, 사용자가 버튼을 클릭할 때마다 숫자가 증가하는 카운터 앱이 있습니다. 이 경우, 카운터 값은 상태입니다.
/// StatefulWidget은 createState() 메서드를 통해 상태를 관리하는 State 객체를 생성
/// State 객체는 상태를 변경하고, 변경된 상태에 따라 위젯을 다시 빌드하는 역할을 합니다. State 객체는 setState() 메서드를 호출하여 상태를 변경할 수 있습니다.
/// StatefulWidget은 상태가 변경될 때마다 build() 메서드를 호출하여 위젯을 다시 빌드합니다. 이를 통해 상태가 변경될 때마다 UI가 자동으로 업데이트됩니다.
///
/// StatefulWidget의 생명주기
/// 1. createState(): StatefulWidget이 생성될 때 호출되며, State 객체를 생성합니다.
/// 2. initState(): State 객체가 생성된 후 호출되며, 초기화 작업을 수행합니다.
/// 3. build(): 위젯이 화면에 그려질 때 호출되며, 위젯의 UI를 정의합니다.
/// 4. didUpdateWidget(): 부모 위젯이 변경될 때 호출되며, 이전 위젯과 새로운 위젯을 비교할 수 있습니다.
/// 5. setState(): 상태가 변경될 때 호출되며, build() 메서드를 다시 호출하여 UI를 업데이트합니다.
/// 6. deactivate(): 위젯이 트리에서 제거될 때 호출되며, 위젯이 다시 트리에 추가될 수 있습니다.
/// 7. dispose(): 위젯이 영구적으로 제거될 때 호출되며, 리소스를 해제하는 작업을 수행합니다.

class StatefulBody extends StatelessWidget {
  const StatefulBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ExampleStateless(), ExampleStateful(index: 3)]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1, child: Container(color: Colors.red));
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late TextEditingController controller;
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
          });

          _index++;
        },
        child: Container(
          color: Colors.blue,
          child: Center(child: Text("$_index")),
        ),
      ),
    );
  }
}

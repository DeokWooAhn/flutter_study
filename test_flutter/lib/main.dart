import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_flutter/StatefulScreen.dart';
import 'package:test_flutter/InPutScreen.dart';
import 'package:test_flutter/CallBackScreen.dart';
import 'package:test_flutter/LibraryScreen.dart';
import 'package:test_flutter/AssetsScreen.dart';
import 'package:test_flutter/NavigateScreen.dart';
import 'package:test_flutter/NavigateScreen2.dart';
import 'package:test_flutter/navigate_screen3.dart';
import 'package:test_flutter/screen/new_page.dart';
import 'package:test_flutter/screen/new_page_route.dart';

/** runApp 예시
 * - Flutter 애플리케이션의 진입점
 * - 주어진 위젯을 루트 위젯으로 사용하여 애플리케이션을 실행
 * - 일반적으로 MaterialApp 또는 CupertinoApp 위젯을 감싸서 사용
 * - 앱 전체의 테마, 라우팅, 로컬라이제이션 등을 설정하는 데 사용
 * - runApp 함수는 main 함수 내에서 호출되어야 함
 */

/** Scaffold란
 * - Flutter에서 기본적인 화면 구조를 제공하는 위젯
 * - 앱 바, 바닥 글, 플로팅 액션 버튼, 드로어 등 다양한 UI 요소를 포함할 수 있음
 * - Material Design 가이드라인을 따르는 앱을 쉽게 만들 수 있도록 도와줌
 * - Scaffold 위젯은 일반적으로 MaterialApp 위젯의 자식으로 사용됨
 * - 주요 속성:
 *   - appBar: 화면 상단에 표시되는 앱 바를 지정 (AppBar 위젯 사용)
 *   - body: 화면의 주요 콘텐츠를 표시하는 영역을 지정
 *   - floatingActionButton: 화면에 떠 있는 액션 버튼을 지정 (FloatingActionButton 위젯 사용)
 *   - drawer: 화면 왼쪽에서 슬라이드하여 나타나는 내비게이션 드로어를 지정 (Drawer 위젯 사용)
 *   - bottomNavigationBar: 화면 하단에 고정된 내비게이션 바를 지정 (BottomNavigationBar 위젯 사용)
 *   - backgroundColor: 화면의 배경색을 지정
 */

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Study")),
//         body: Body5(),
//       ),
//     ),
//   );
// }

/// Container 위젯
/// - 사각형 박스를 그리는 위젯
/// - 크기, 패딩, 마진, 배경색, 테두리, 그림자 등 다양한 스타일 속성을 지정할 수 있음
/// - 자식 위젯을 포함할 수 있음
/// - 레이아웃을 구성하는 데 자주 사용됨
///
/// 주요 속성:
/// - width: 컨테이너의 너비를 지정
/// - height: 컨테이너의 높이를 지정
/// - padding: 컨테이너 내부 여백을 지정 (EdgeInsets 사용)
/// - margin: 컨테이너 외부 여백을 지정 (EdgeInsets 사용)
/// - decoration: BoxDecoration 객체를 사용하여 배경색, 테두리, 그림자 등을 설정
/// - child: 컨테이너 내부에 포함될 자식 위젯을 지정
///
/// BoxDecoration 주요 속성:
/// - color: 배경색을 지정
/// - border: 테두리를 지정 (Border 객체 사용)
/// - borderRadius: 모서리 둥글게 처리 (BorderRadius 객체 사용)
/// - boxShadow: 그림자를 지정 (BoxShadow 객체 리스트 사용)

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.red.shade200,
          border: Border.all(
            color: Colors.yellow,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(150),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              offset: Offset(6, 6),
              blurRadius: 10,
              spreadRadius: 10,
            ),
            BoxShadow(
              color: Colors.purple.withValues(alpha: 0.5),
              offset: Offset(-6, -6),
              blurRadius: 10,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Container(color: Colors.blue, child: Text("Hello Container")),
        ),
      ),
    );
  }
}

/// Row, Column 위젯
/// - 자식 위젯들을 수평(Row) 또는 수직(Column) 방향으로 배치하는 레이아웃 위젯
/// - 여러 자식 위젯들을 한 줄 또는 한 열로 정렬할 때 사용
///
/// 주요 속성:
/// - mainAxisAlignment: 주축(main axis) 방향(가로 for Row, 세로 for Column)에서 자식 위젯들의 정렬 방식을 지정 (MainAxisAlignment 사용)
/// - crossAxisAlignment: 교차축(cross axis) 방향(세로 for Row, 가로 for Column)에서 자식 위젯들의 정렬 방식을 지정 (CrossAxisAlignment 사용)
/// - mainAxisSize: 주축 방향에서의 크기 조절 방식을 지정 (MainAxisSize 사용)
/// - children: 자식 위젯들의 리스트를 지정
///
/// SingleChildScrollView 위젯
/// - 단일 자식 위젯을 스크롤 가능하게 만드는 위젯
/// - 자식 위젯이 부모 위젯의 크기를 초과할 때 스크롤을 통해 전체 내용을 볼 수 있도록 함
///
/// 주요 속성:
/// - scrollDirection: 스크롤 방향을 지정 (Axis.horizontal 또는 Axis.vertical)
/// - child: 스크롤 가능하게 만들 단일 자식 위젯을 지정
///
/// Row, Column, SingleChildScrollView 조합 예시:
/// - Row 또는 Column을 SingleChildScrollView의 자식으로 사용하여 가로 또는 세로 스크롤이 가능한 레이아웃을 만들 수 있음

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text("Container 1"),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text("Container 2"),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text("Container 3"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}

class Body3 extends StatelessWidget {
  const Body3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
    );
  }
}

/// Stack, Align, Positioned 위젯
/// - Stack: 자식 위젯들을 겹쳐서 배치하는 레이아웃 위젯
/// - Align: 자식 위젯을 특정 위치에 정렬하는 위젯
/// - Positioned: Stack 내에서 자식 위젯의 위치를 절대 좌표로 지정하는 위젯
///
/// 주요 속성:
/// - Stack:
///   - alignment: Stack 내에서 자식 위젯들의 기본 정렬 방식을 지정 (Alignment 사용)
///   - fit: Stack의 크기 조절 방식을 지정 (StackFit 사용)
///   - children: 자식 위젯들의 리스트를 지정
/// - Align:
///   - alignment: 자식 위젯을 정렬할 위치를 지정 (Alignment 사용)
///   - widthFactor, heightFactor: 자식 위젯의 크기에 대한 배율을 지정
///   - child: 정렬할 단일 자식 위젯을 지정
/// - Positioned:
///   - top, bottom, left, right: 자식 위젯의 위치를 절대 좌표로 지정
///   - width, height: 자식 위젯의 크기를 지정
///   - child: 위치를 지정할 단일 자식 위젯을 지정
///
/// Stack, Align, Positioned 조합 예시:
/// - Stack을 사용하여 여러 자식 위젯들을 겹쳐서 배치하고,
///   Align과 Positioned을 사용하여 각 자식 위젯의 위치를 세밀하게 조정할 수 있음

class Body4 extends StatelessWidget {
  const Body4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.black),
        Align(
          alignment: Alignment.center,
          child: Container(width: 400, height: 400, color: Colors.red),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(width: 300, height: 300, color: Colors.blue),
        ),
        Align(
          alignment: Alignment(0.5, -0.5),
          child: Container(width: 200, height: 200, color: Colors.green),
        ),
      ],
    );
  }
}

class Body5 extends StatelessWidget {
  const Body5({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(150),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(140),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Count 0",
            style: TextStyle(color: Colors.red, fontSize: 32),
          ),
        ),
      ],
    );
  }
}

/// Expanded, Flexible 위젯
/// - Expanded: 자식 위젯이 남은 공간을 모두 차지하도록 확장하는 위젯
/// - Flexible: 자식 위젯이 남은 공간을 유연하게 차지하도록 하는 위젯
/// - 둘 다 Row, Column, Flex 위젯의 자식으로 사용됨
/// - 주요 차이점: Expanded는 자식 위젯이 가능한 모든 공간을 차지하도록 강제하는 반면, Flexible은 자식 위젯이 필요에 따라 공간을 차지하도록 허용
/// - 둘 다 flex 속성을 사용하여 공간 분배 비율을 지정할 수 있음
/// - flex 속성: 자식 위젯이 차지할 공간의 비율을 지정하는 정수 값 (기본값은 1)
/// - 예시: flex 값이 2인 위젯은 flex 값이 1인 위젯보다 두 배 더 많은 공간을 차지
/// - Expanded와 Flexible은 함께 사용할 수 있으며, 필요에 따라 공간을 효율적으로 분배하는 데 도움
/// - 주로 반응형 레이아웃을 만들 때 유용

// void main() {
//   runApp(const MaterialApp(home: HomeWidget()));
// }

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: ConstraintWidget()));
  }
}

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Text("eeeeeeeeeeeeeeeeeeee", style: TextStyle(fontSize: 30)),
          ),
        ),
        Flexible(
          child: Container(color: Colors.red, child: Text("wwwwww")),
        ),
      ],
    );
  }
}

class ThemeBody extends StatefulWidget {
  const ThemeBody({super.key});

  @override
  State<ThemeBody> createState() => _ThemeBodyState();
}

class _ThemeBodyState extends State<ThemeBody> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Theme"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("press Count", style: textTheme.bodyLarge,),
              Text("$count", style: textTheme.titleLarge,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {

            }),
          },
        );
    }
}

void main() {
  runApp(
    MaterialApp(
      home: const NavigateScreen2(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
        )
      ),
    ),
  );
}

// void main() {
//   runApp(
//     MaterialApp.router(
//       routerConfig: GoRouter(
//         initialLocation: '/',
//         routes: [
//           GoRoute(
//             path: "/",
//             name: "home",
//             builder: (context, _) => const NavigateScreen2(),
//           ),
//           GoRoute(
//             path: "/new",
//             name: "new",
//             builder: (context, _) => const NewPageRoute(),
//             routes: [
//
//             ]
//           ),
//           GoRoute(
//             path: "/new1",
//             name: "new1",
//             builder: (context, _) => const NewPage2(),
//           ),
//         ],
//       ),
//     ),
//   );
// }

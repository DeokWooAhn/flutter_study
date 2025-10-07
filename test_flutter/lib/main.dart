import 'package:flutter/material.dart';

/** Container 위젯
 * - 사각형 박스를 그리는 위젯
 * - 크기, 패딩, 마진, 배경색, 테두리, 그림자 등 다양한 스타일 속성을 지정할 수 있음
 * - 자식 위젯을 포함할 수 있음
 * - 레이아웃을 구성하는 데 자주 사용됨
 *
 * 주요 속성:
 * - width: 컨테이너의 너비를 지정
 * - height: 컨테이너의 높이를 지정
 * - padding: 컨테이너 내부 여백을 지정 (EdgeInsets 사용)
 * - margin: 컨테이너 외부 여백을 지정 (EdgeInsets 사용)
 * - decoration: BoxDecoration 객체를 사용하여 배경색, 테두리, 그림자 등을 설정
 * - child: 컨테이너 내부에 포함될 자식 위젯을 지정
 *
 * BoxDecoration 주요 속성:
 * - color: 배경색을 지정
 * - border: 테두리를 지정 (Border 객체 사용)
 * - borderRadius: 모서리 둥글게 처리 (BorderRadius 객체 사용)
 * - boxShadow: 그림자를 지정 (BoxShadow 객체 리스트 사용)
 */
/*void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Study to Container")),
        body: CustomContainer(),
      ),
    ),
  );
}

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
}*/

/** Row, Column 위젯
 * - 자식 위젯들을 수평(Row) 또는 수직(Column) 방향으로 배치하는 레이아웃 위젯
 * - 여러 자식 위젯들을 한 줄 또는 한 열로 정렬할 때 사용
 *
 * 주요 속성:
 * - mainAxisAlignment: 주축(main axis) 방향(가로 for Row, 세로 for Column)에서 자식 위젯들의 정렬 방식을 지정 (MainAxisAlignment 사용)
 * - crossAxisAlignment: 교차축(cross axis) 방향(세로 for Row, 가로 for Column)에서 자식 위젯들의 정렬 방식을 지정 (CrossAxisAlignment 사용)
 * - mainAxisSize: 주축 방향에서의 크기 조절 방식을 지정 (MainAxisSize 사용)
 * - children: 자식 위젯들의 리스트를 지정
 *
 * SingleChildScrollView 위젯
 * - 단일 자식 위젯을 스크롤 가능하게 만드는 위젯
 * - 자식 위젯이 부모 위젯의 크기를 초과할 때 스크롤을 통해 전체 내용을 볼 수 있도록 함
 *
 * 주요 속성:
 * - scrollDirection: 스크롤 방향을 지정 (Axis.horizontal 또는 Axis.vertical)
 * - child: 스크롤 가능하게 만들 단일 자식 위젯을 지정
 *
 * Row, Column, SingleChildScrollView 조합 예시:
 * - Row 또는 Column을 SingleChildScrollView의 자식으로 사용하여 가로 또는 세로 스크롤이 가능한 레이아웃을 만들 수 있음
 */
/*void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("위젯 상하좌우 배치")),
        body: Body3(),
      ),
    ),
  );
}

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
}*/



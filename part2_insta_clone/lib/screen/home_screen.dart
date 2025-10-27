import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [StoryArea(), FeedList()]),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => UserStory(userName: 'User $index'),
        ),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;

  const UserStory({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(userName),
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData({
    required this.userName,
    required this.likeCount,
    required this.content,
  });
}

final feedDataList = [
  FeedData(userName: 'User1', likeCount: 50, content: '오늘 점심은 국밥.'),
  FeedData(userName: 'User2', likeCount: 24, content: '오늘 점심은 짬뽕.'),
  FeedData(userName: 'User3', likeCount: 82, content: '오늘 점심은 돈까스.'),
  FeedData(userName: 'User4', likeCount: 75, content: '오늘 점심은 제육.'),
  FeedData(userName: 'User5', likeCount: 124, content: '오늘 점심은 짜장면.'),
  FeedData(userName: 'User6', likeCount: 54, content: '오늘 점심은 햄버거.'),
  FeedData(userName: 'User7', likeCount: 12, content: '오늘 점심은 순두부 찌개.'),
  FeedData(userName: 'User8', likeCount: 6, content: '오늘 점심은 김치찌개.'),
  FeedData(userName: 'User9', likeCount: 77, content: '오늘 점심은 육개장.'),
  FeedData(userName: 'User10', likeCount: 39, content: '오늘 점심은 부대찌개.'),
  FeedData(userName: 'User1', likeCount: 69, content: '오늘 점심은 초밥.'),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(feedData: feedDataList[index]),
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

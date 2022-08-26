import 'package:flutter/material.dart';
import 'package:teacher/model/friend.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Friend friend = Friend(imgUrl: null, name: '테디', msg: 'hi', music: '데이식스');
  Friend friend2 = Friend.fromMap(
    {
      'imgUrl': 'images/messi.jpeg',
      'name': '메씌',
      'msg': '상메',
      'music': 'attention'
    },
  );

  Widget _renderFriendTile(Friend friend) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (friend.imgUrl != null)
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/messi.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              if (friend.imgUrl == null)
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/dummy.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              const SizedBox(
                width: 16,
              ),
              RichText(
                text: TextSpan(
                  text: friend.name,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\n${friend.msg}',
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 4, 4),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  friend.music ?? 'none',
                ),
                const Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.green,
                  size: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _renderFriendsTile(
      String? imgUrl, String name, String? statusMsg, String? music) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (imgUrl != null)
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/messi.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              if (imgUrl == null)
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/dummy.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              const SizedBox(
                width: 16,
              ),
              RichText(
                text: TextSpan(
                  text: name,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\n$statusMsg',
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 4, 4, 4),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$music',
                ),
                const Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.green,
                  size: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            '친구',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          /** actions : 복수의 아이콘을 오른쪽에 배치할 때 사용 */
          actions: [
            IconButton(
              onPressed: () {
                print('검색');
              },
              icon: const Icon(
                Icons.search_sharp,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                print('친구추가');
              },
              icon: const Icon(
                Icons.person_add_alt,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                print('음악');
              },
              icon: const Icon(
                Icons.music_note_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                print('aa');
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'SFAC(플러터개발자 양성프로젝트',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '\n우수 수료생대상 전액 무료',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(32),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('images/messi.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'SFAC',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '친구 687',
                    ),
                  ),
                  Column(
                    children: [
                      _renderFriendTile(friend2),
                      _renderFriendsTile(
                          friend.imgUrl, friend.name, friend.msg, friend.music),
                      // ...list.map((e) => _renderFriendsTile(
                      //     e['imgUrl'], 'name', 'statusMsg', 'music')),

                      // _friendsTile('', '이름', '상메', '노래'),
                      // _friendsTile('', '카카오', '전화중', 'music'),
                      // _friendsTile(null, '카카오', '전화중', 'music'),
                      // _friendsTile('', '이름', '상메', '노래'),
                      // _friendsTile('', '카카오', '전화중', 'music'),
                      // _friendsTile(null, '카카오', '전화중', 'music'),
                      // _friendsTile('', '이름', '상메', '노래'),
                      // _friendsTile('', '카카오', '전화중', 'music'),
                      // _friendsTile(null, '카카오', '전화중', 'music'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        // children 위젯들을 양 끝에 배치
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 프로필 사진과 이름, 게시 시간을 묶어주기 위해 Row 사용
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage(
                    'https://www.street.co.kr/wp-content/uploads/2021/03/00-13.jpg'),
              ),
              // 프로필 사진과 이름 사이의 간격
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('임성빈'),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '23시간 전',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

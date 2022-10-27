import 'package:flutter/material.dart';

class BlogBottom extends StatelessWidget {
  const BlogBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.favorite_border_rounded,
                color: Colors.red,
              ),
              Text(' 12'),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.chat_bubble_outline_outlined,
              ),
              Text(' 2'),
            ],
          ),
          const Icon(Icons.ios_share_rounded)
        ],
      ),
    );
  }
}

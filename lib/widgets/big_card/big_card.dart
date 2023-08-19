import 'package:flutter/material.dart';
import 'package:task_platina_mobile/core/network/rest_client.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/other_widgets/time_widget.dart';

import '../../constants/color_constants.dart';

class BigCard extends StatelessWidget {
  final PostModel postModel;
  const BigCard({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  BASE_URL + postModel.image,
                  width: MediaQuery.of(context).size.width - 32,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              Text(postModel.title, style: const TextStyle(color: blue, fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              Text(postModel.description, maxLines: 2, style: const TextStyle(color: blue10, fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400, height: 1.43)),
              // TextButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 0)),
              //     overlayColor: MaterialStateProperty.all(Colors.transparent),
              //   ),
              //   child: const Text('давомини ўқиш', style: TextStyle(color: Color(0xFF0066CC), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400, height: 1.43)),
              // ),
              const SizedBox(height: 10),
              TimeWidget(category: postModel.category, date: postModel.publish),
            ],
          )
        ],
      ),
    );
  }
}

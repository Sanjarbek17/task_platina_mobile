import 'package:flutter/material.dart';
import 'package:task_platina_mobile/constants/color_constants.dart';
import 'package:task_platina_mobile/core/network/rest_client.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/other_widgets/time_widget.dart';

class SmallCard extends StatelessWidget {
  final PostModel postModel;
  const SmallCard({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postModel.title,
                  style: const TextStyle(color: blue, fontSize: 16, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                TimeWidget(category: postModel.category, date: postModel.publish),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(BASE_URL + postModel.imageMedium, fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}

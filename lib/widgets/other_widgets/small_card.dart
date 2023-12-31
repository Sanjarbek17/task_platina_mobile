import 'package:cached_network_image/cached_network_image.dart';
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
            flex: 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Text(
                    postModel.title,
                    style: const TextStyle(color: blue, fontSize: 16, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 10),
                TimeWidget(category: postModel.category, date: postModel.publish),
              ],
            ),
          ),
          // const SizedBox(width: 16),
          Expanded(
            flex: 35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(imageUrl: BASE_URL + postModel.imageMedium, width: 129, height: 86, fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}

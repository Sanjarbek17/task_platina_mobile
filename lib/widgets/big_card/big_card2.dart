import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_platina_mobile/core/network/rest_client.dart';
import 'package:task_platina_mobile/models/post_model.dart';
import 'package:task_platina_mobile/widgets/other_widgets/time_widget.dart';

import '../../constants/color_constants.dart';

class BigCard2 extends StatelessWidget {
  final PostModel postModel;
  const BigCard2({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(imageUrl: BASE_URL + postModel.image, fit: BoxFit.cover, width: double.infinity, height: 190),
              ),
              const SizedBox(height: 15),
              Text(postModel.title, maxLines: 2, style: const TextStyle(color: blue, fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              TimeWidget(
                category: postModel.category,
                date: postModel.publish,
              ),
            ],
          )
        ],
      ),
    );
  }
}

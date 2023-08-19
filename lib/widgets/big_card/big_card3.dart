import 'package:flutter/material.dart';
import 'package:task_platina_mobile/models/post_model.dart';

import '../../constants/color_constants.dart';
import '../../core/network/rest_client.dart';

class BigCard3 extends StatelessWidget {
  final PostModel postModel;

  const BigCard3({
    super.key,
    required this.postModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              Text(postModel.title, style: const TextStyle(color: blue, fontSize: 18, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700)),
            ],
          )
        ],
      ),
    );
  }
}

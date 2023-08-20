import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../constants/color_constants.dart';

class SearchCard extends StatelessWidget {
  final String title;
  final String image;
  const SearchCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(imageUrl: image, height: 40, width: 40, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 34,
              child: Html(data: title, style: {'body': Style(textOverflow: TextOverflow.ellipsis, maxLines: 2, margin: Margins.all(0), color: blue, fontSize: FontSize(14), fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400)}),
            ),
          ),
        ],
      ),
    );
  }
}

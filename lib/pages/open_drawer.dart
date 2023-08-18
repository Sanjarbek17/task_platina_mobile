import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_platina_mobile/widgets/social_widget.dart';

import '../widgets/category_builder.dart';
import '../widgets/langugae_widget.dart';

class DrawerChild extends StatefulWidget {
  const DrawerChild({
    super.key,
  });

  @override
  State<DrawerChild> createState() => _DrawerChildState();
}

class _DrawerChildState extends State<DrawerChild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CategoryBuilder(),
          const Divider(height: 35),
          const LanguageWidget(),
          const Divider(height: 35),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 17 / 7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              children: [
                SocialWidget(
                  text: 'platinauzb',
                  icon: SvgPicture.asset('assets/images/telegram.svg'),
                ),
                SocialWidget(
                  text: 'platinauzb',
                  icon: SvgPicture.asset('assets/images/instagram.svg'),
                ),
                SocialWidget(
                  text: 'platinauz',
                  icon: SvgPicture.asset('assets/images/facebook.svg'),
                ),
                SocialWidget(
                  text: 'platinauz',
                  icon: SvgPicture.asset('assets/images/youtube.svg'),
                ),
                SocialWidget(
                  text: 'platinauz',
                  icon: SvgPicture.asset('assets/images/twitter.svg'),
                ),
                SocialWidget(
                  text: 'platinauz',
                  icon: SvgPicture.asset('assets/images/tiktok.svg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
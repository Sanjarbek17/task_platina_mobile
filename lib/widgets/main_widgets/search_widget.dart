import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color_constants.dart';
import '../../controllers/language_controller.dart';
import '../../controllers/search_controller.dart';
import '../../models/post_model.dart';
import '../other_widgets/search_card.dart';

class SearchWidget extends StatefulWidget {
  final Function(PointerDownEvent)? tappedOutside;
  const SearchWidget({
    super.key,
    this.tappedOutside,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  CustomSearchController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.status.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      if (controller.status.isError) {
        return const Center(child: Text('Error'));
      }
      List<PostModel> postModels = controller.postModels;
      return Container(
        color: blue.withOpacity(0.6),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: TapRegion(
            onTapOutside: widget.tappedOutside,
            child: Column(
              children: [
                TextField(
                  cursorHeight: 20,
                  onChanged: (value) {
                    LocalizationController loc = Get.find();
                    controller.searchData('https://platina.uz/api/proxy/${loc.locale.languageCode}/api/search?q=$value');
                  },
                  decoration: InputDecoration(
                    hintText: "Sayt bo'ylab qidiruv...".tr,
                    hintStyle: const TextStyle(color: blue10),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: link, width: 2), borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: link, width: 2), borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: postModels.length > 4 ? 4 : postModels.length,
                    itemBuilder: (context, index) {
                      return SearchCard(
                        title: postModels[index].title,
                        image: 'https://cp.platina.uz//${postModels[index].imageMedium}',
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

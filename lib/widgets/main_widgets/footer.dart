
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/color_constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/images/platina horizontal.svg'),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Сайт ҳақида', style: TextStyle(color: blue, fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
              Text('Реклама', style: TextStyle(color: blue, fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
              Text('Маҳфийлик сиёсати', style: TextStyle(color: blue, fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('© 2023 Platina.uz. Барча ҳуқуқлар ҳимояланган. «Platina.uz» сайтида жойланган маълумотлар муаллифнинг шахсий фикри. Сайтда жойланган ҳар қандай материалларни ёзма рухсатсиз фойдаланиш таъқиқланади.', style: TextStyle(color: blue10, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400)),
          const SizedBox(height: 12),
          const Text('Ўзбекистон Республикаси Президенти Администрацияси ҳузуридаги Ахборот ва оммавий коммуникациялар агентлиги томонидан 02.12.2022 санасида №051412 сонли гувоҳнома билан ОАВ сифатида рўйхатга олинган', style: TextStyle(color: blue10, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400)),
          const Divider(height: 25),
          Row(
            children: [
              SvgPicture.asset('assets/images/telegram.svg', width: 24, height: 24, color: blue10),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/images/instagram.svg', width: 24, height: 24, color: blue10),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/images/facebook.svg', width: 24, height: 24, color: blue10),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/images/youtube.svg', width: 24, height: 24, color: blue10),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/images/twitter.svg', width: 24, height: 24, color: blue10),
              const SizedBox(width: 16),
              SvgPicture.asset('assets/images/tiktok.svg', width: 24, height: 24, color: blue10),
              const Spacer(),
              Container(
                width: 45,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F8FF),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Center(
                  child: Text('18+', style: TextStyle(color: Color(0xFF737C98), fontSize: 14, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              SvgPicture.asset('assets/images/redmedia.svg'),
              const SizedBox(width: 16),
              const Text('IT-компанияси томонидан ишлаб чиқилди', style: TextStyle(color: blue10, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
    );
  }
}

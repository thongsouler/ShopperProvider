import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String src;
  final Function press;
  const SocialIcon({Key? key, required this.src, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: kPrimaryColor, width: 1)),
        child: SvgPicture.asset(src),
        height: 40,
        width: 40,
      ),
    );
  }
}

import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';

class SignUpBackground extends StatelessWidget {
  final Widget child;
  const SignUpBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset('assets/images/signup_top.png'),
          height: size.height * 0.25,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset('assets/images/main_bottom.png'),
          height: size.height * 0.2,
        ),
        child
      ]),
    );
  }
}

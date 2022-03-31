import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(5),
        width: size.width * 0.8,
        child: Row(
          children: const [
            buildDivider(),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Or',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w400),
                )),
            buildDivider(),
          ],
        ));
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Divider(
      color: kPrimaryColor,
    ));
  }
}

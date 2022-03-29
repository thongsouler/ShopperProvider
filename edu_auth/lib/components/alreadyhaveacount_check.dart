import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            login
                ? 'Already have an account?   '
                : 'Don\'t have an account?   ',
            style: const TextStyle(color: kPrimaryColor)),
        GestureDetector(
          onTap: () => press(),
          child: Text(
            login ? 'LOGIN' : 'SIGN UP',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}

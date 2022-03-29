import 'package:edu_auth/Screens/Login/components/login_background.dart';
import 'package:edu_auth/Screens/Welcome/welcome_screen.dart';
import 'package:edu_auth/components/alreadyhaveacount_check.dart';
import 'package:edu_auth/components/rounded_button.dart';
import 'package:edu_auth/components/rounded_inputfield.dart';
import 'package:edu_auth/components/rounded_password_input.dart';
import 'package:edu_auth/components/textfield_container.dart';
import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(children: [
          const Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedInputField(
            hintText: 'Your email',
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(text: 'LOGIN', press: () {}),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              print("Signup");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WelcomeScreen();
              }));
            },
          )
        ]),
      ),
    );
  }
}

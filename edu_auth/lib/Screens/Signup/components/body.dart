import 'package:edu_auth/Screens/Login/login_screen.dart';
import 'package:edu_auth/Screens/Signup/components/Or_Divider.dart';
import 'package:edu_auth/Screens/Signup/components/signup_background.dart';
import 'package:edu_auth/Screens/Signup/components/social_icon.dart';
import 'package:edu_auth/Screens/Signup/signup_screen.dart';
import 'package:edu_auth/components/alreadyhaveacount_check.dart';
import 'package:edu_auth/components/rounded_button.dart';
import 'package:edu_auth/components/rounded_inputfield.dart';
import 'package:edu_auth/components/rounded_password_input.dart';
import 'package:edu_auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              alignment: Alignment.topLeft,
            ),
            const Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(hintText: 'Email', onChanged: (value) {}),
            SizedBox(height: size.height * 0.02),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "SIGN UP",
              press: () {
                print("press signup button");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LoginScreen();
                //     },
                //   ),
                // );
              },
            ),
            AlreadyHaveAnAccountCheck(
                login: true,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                    src: 'assets/icons/facebook.svg',
                    press: () {
                      print('press icon fb');
                    }),
                SocialIcon(
                    src: 'assets/icons/google-plus.svg',
                    press: () {
                      print('press icon g+');
                    }),
                SocialIcon(
                    src: 'assets/icons/twitter.svg',
                    press: () {
                      print('press icon tw');
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

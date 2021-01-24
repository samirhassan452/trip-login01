import 'package:flutter/material.dart';
import 'package:login_ui/view/auth/customStandardHome.dart';
import 'package:login_ui/view/auth/login_ui.dart';
import 'package:login_ui/view/auth/register_ui.dart';
import 'auth/customButton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomHomePage(
      backgroundImage: AssetImage('assets/images/sea.jpg'),
      content: Padding(
        padding: EdgeInsets.only(bottom: height * 0.08),
        child: Column(
          children: [
            BuildCustomButton(
              width: width,
              text: "Sign Up",
              onClick: () => _showModelSheet(context, "up"),
              backgroundColor: Colors.orange,
              textColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            BuildCustomButton(
              width: width,
              text: "Sign In",
              onClick: () => _showModelSheet(context, "in"),
              backgroundColor: Colors.white,
              textColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }

  void _showModelSheet(BuildContext context, String type) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42), topRight: Radius.circular(42))),
        barrierColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 32),
              child: type == "up" ? SignUpPage() : SignInPage());
        });
  }
}

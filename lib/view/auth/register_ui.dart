import 'package:flutter/material.dart';
import 'package:login_ui/view/auth/customButton.dart';
import 'package:login_ui/view/auth/customTextField.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        buildHeader(width),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextField(
          textType: "Email",
          textIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: height * 0.03,
        ),
        CustomTextField(
          textType: "Password",
          textIcon: Icons.vpn_key_outlined,
          keyboardType: TextInputType.visiblePassword,
        ),
        SizedBox(
          height: height * 0.06,
        ),
        BuildCustomButton(
            width: width,
            text: "Sign Up",
            onClick: () {},
            backgroundColor: Colors.orange,
            textColor: Colors.white)
      ],
    );
  }

  Row buildHeader(double width) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "New Account",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.07),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    shape: BoxShape.circle,
                    color: Colors.transparent),
                child: IconButton(
                    icon: Icon(Icons.photo_camera),
                    onPressed: () {
                      print("hey");
                    })),
            Text("Upload Photo",
                style:
                    TextStyle(color: Colors.grey[500], fontSize: width * 0.03))
          ],
        )),
      ],
    );
  }
}

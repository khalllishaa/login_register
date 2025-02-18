import 'package:flutter/material.dart';
import 'package:login_register/register.dart';
import 'package:login_register/widgets/MyOutlinedButton.dart';
import 'package:login_register/widgets/RichTextLink.dart';
import 'package:login_register/widgets/my_button.dart';
import 'package:login_register/widgets/text_field_r.dart';

class shopeeL extends StatefulWidget {
  const shopeeL({super.key});

  @override
  State<shopeeL> createState() => _shopeeLState();
}

class _shopeeLState extends State<shopeeL> {
  bool _isPasswordVisible = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Log In",
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              icon: Icon(Icons.question_mark_outlined),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      'https://i.pinimg.com/originals/8b/9c/08/8b9c08aab6a18da2d6b3a42bf522e3a0.jpg',
                      height: screenHeight * 0.1,
                    ),
                    margin: EdgeInsets.all(screenWidth * 0.05),
                  ),
                  TextFieldR(
                    hintText: "No. Handphone/Email/Username",
                    isPassword: false,
                    controller: usernameController,
                    prefixIcon: Icon(Icons.person, color: Colors.grey[500]),
                  ),
                  TextFieldR(
                    hintText: "Password",
                    isPassword: !_isPasswordVisible,
                    controller: passwordController,
                    prefixIcon: Icon(Icons.key_rounded, color: Colors.grey[500]),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey[500],
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  MyButton(
                    onPressed: () {
                      print("Username: ${usernameController.text}, Password: ${passwordController.text}");
                      if (usernameController.text == "admin" && passwordController.text == "admin") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => shopeeR()),
                        );
                      } else {
                        print("Invalid username or password");
                      }
                    },
                    textButton: "Lanjut",
                    backgroundColor: Colors.grey[350]!,
                    textColor: Colors.grey[500]!,
                    borderRadius: 3.0,
                    elevation: 0,
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.06,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: screenWidth * 0.4),
                    child: Text(
                      'Log in dengan no. handphone',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                          child: Text(
                            "ATAU",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyOutlinedButton(
                    label: 'Daftar dengan Google',
                    iconUrl: 'https://e7.pngegg.com/pngimages/704/688/png-clipart-google-google.png',
                    onPressed: () {},
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  MyOutlinedButton(
                    label: 'Daftar dengan Facebook',
                    iconUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
                    onPressed: () {},
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  MyOutlinedButton(
                    label: 'Daftar dengan WhatsApp',
                    iconUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/WhatsApp_icon.png',
                    iconHeight: screenHeight * 0.04,
                    onPressed: () {},
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  RichTextLink(
                    mainText: 'Belum punya akun? ',
                    linkText: 'Daftar',
                    mainTextStyle: TextStyle(color: Colors.grey[700]),
                    linkTextStyle: TextStyle(color: Colors.blue),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => shopeeR()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_register/login.dart';
import 'package:login_register/widgets/MyOutlinedButton.dart';
import 'package:login_register/widgets/RichTextLink.dart';
import 'package:login_register/widgets/my_button.dart';
import 'package:login_register/widgets/text_field_r.dart';

class shopeeR extends StatefulWidget {
  const shopeeR({super.key});

  @override
  State<shopeeR> createState() => _shopeeRState();
}

class _shopeeRState extends State<shopeeR> {
  bool _isChecked = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Daftar",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.question_mark_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(
                    'https://i.pinimg.com/originals/8b/9c/08/8b9c08aab6a18da2d6b3a42bf522e3a0.jpg',
                    height: screenHeight * 0.2,
                  ),
                ),
                TextFieldR(
                  hintText: "Telepon",
                  isPassword: false,
                  controller: usernameController,
                  prefixIcon: Icon(Icons.phone, color: Colors.grey[500]),
                ),
                MyButton(
                  textButton: "Lanjut",
                  backgroundColor: Colors.grey[350]!,
                  textColor: Colors.grey[500]!,
                  borderRadius: 3.0,
                  elevation: 0,
                  onPressed: () {},
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.06,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: screenWidth * 0.02),
                          child: Divider(
                            color: Colors.grey,
                            height: screenHeight * 0.02,
                          ),
                        ),
                      ),
                      Text(
                        "ATAU",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: screenWidth * 0.02),
                          child: Divider(
                            color: Colors.grey,
                            height: screenHeight * 0.02,
                          ),
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
                SizedBox(height: screenHeight * 0.03),
                RichTextLink(
                  mainText: 'Sudah punya akun? ',
                  linkText: 'Login',
                  mainTextStyle: TextStyle(color: Colors.grey[700]),
                  linkTextStyle: TextStyle(color: Colors.blue),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => shopeeL()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

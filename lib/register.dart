import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_register/login.dart';

class shopeeR extends StatefulWidget {
  const shopeeR({super.key});

  @override
  State<shopeeR> createState() => _shopeeRState();
}

class _shopeeRState extends State<shopeeR> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.orange,
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
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.store),
                  color: Colors.orange,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.question_mark_outlined),
                  color: Colors.orange,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                'https://freelogopng.com/images/all_img/1656180520shopee-png-image.png',
                height: 75,
              ),
              margin: EdgeInsets.all(30),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "No. Handphone/Email/Username",
                  hintStyle: TextStyle(color: Colors.grey[500]!),
                  prefixIcon: Icon(Icons.person, color: Colors.grey[500]),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[500]!),
                  ),
                ),
                style: TextStyle(color: Colors.grey[500]),
                cursorColor: Colors.grey[500],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[500]!),
                        prefixIcon: Icon(Icons.key_rounded, color: Colors.grey[500]),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[500]!),
                        ),
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
                      style: TextStyle(color: Colors.grey[500]),
                      cursorColor: Colors.grey[500],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Lupa?');
                    },
                    child: Text(
                      'Lupa?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[350],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: SizedBox(
                width: 300,
                height: 50,
                child: Center(
                  child: Text(
                    "Lanjut",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
            ),
            // Teks biru di bawah tombol "Lanjut"
            Container(
              margin: EdgeInsets.only(top: 10, left: 160),
              child: Text(
                'Log in dengan no. handphone',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),
                  ),
                  Text(
                    "ATAU",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                'https://e7.pngegg.com/pngimages/704/688/png-clipart-google-google.png',
                height: 20.0,
              ),
              label: Text('Daftar dengan Google'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                minimumSize: Size(350, 50),
                textStyle: TextStyle(fontSize: 16, color: Colors.grey[800]),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png',
                height: 20.0,
              ),
              label: Text('Daftar dengan Facebook'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                minimumSize: Size(350, 50),
                textStyle: TextStyle(fontSize: 16, color: Colors.grey[800]),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/5/5e/WhatsApp_icon.png',
                height: 30.0,
              ),
              label: Text('Daftar dengan WhatsApp'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                minimumSize: Size(350, 50),
                textStyle: TextStyle(fontSize: 16, color: Colors.grey[800]),
                backgroundColor: Colors.white,
              ),
            ),
            const Spacer(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: TextStyle(color: Colors.grey[700]),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Dafar',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {
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
          ],
        ),
      ),
    );
  }
}
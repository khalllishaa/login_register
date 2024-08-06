import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_register/register.dart';

class shopeeL extends StatefulWidget {
  const shopeeL({super.key});

  @override
  State<shopeeL> createState() => _shopeeLState();
}

class _shopeeLState extends State<shopeeL> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.orange,
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
            color: Colors.orange,
            onPressed: () { },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                'https://freelogopng.com/images/all_img/1656180520shopee-png-image.png',
                height: 75,
              ),
              margin: EdgeInsets.all(20),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Telepon",
                  hintStyle: TextStyle(color: Colors.grey[500]!),
                  prefixIcon: Icon(Icons.phone, color: Colors.grey[500]),
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
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Aktifkan ShopeePay sekarang",
                      style: TextStyle(color: Colors.grey[500], fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            // Bagian Divider dengan teks "ATAU"
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
                    text: 'Sudah punya akun? ',
                    style: TextStyle(color: Colors.grey[700]),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {
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
          ],
        ),
      ),
    );
  }
}
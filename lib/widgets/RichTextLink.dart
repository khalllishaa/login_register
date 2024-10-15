import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextLink extends StatelessWidget {
  final String mainText;
  final String linkText;
  final TextStyle mainTextStyle;
  final TextStyle linkTextStyle;
  final Function()? onTap;

  const RichTextLink({
    super.key,
    required this.mainText,
    required this.linkText,
    required this.mainTextStyle,
    required this.linkTextStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RichText(
        text: TextSpan(
          text: mainText,
          style: mainTextStyle,
          children: <TextSpan>[
            TextSpan(
              text: linkText,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}

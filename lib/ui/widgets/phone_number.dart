import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_phone/resources/resources.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SvgPicture.asset(AppSvgs.mobile),
            const SizedBox(width: 9),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff29364E),
                ),
                children: [
                  const TextSpan(text: '+1 (201) 123 45 67 \n'),
                  TextSpan(
                    text: text,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8693A3),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(AppSvgs.s),
            const SizedBox(width: 9),
            SvgPicture.asset(AppSvgs.v),
          ],
        ),
      ],
    );
  }
}

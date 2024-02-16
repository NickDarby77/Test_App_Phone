import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            SvgPicture.asset('assets/svgs/mobile.svg'),
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
            SvgPicture.asset('assets/svgs/s.svg'),
            const SizedBox(width: 9),
            SvgPicture.asset('assets/svgs/v.svg'),
          ],
        ),
      ],
    );
  }
}

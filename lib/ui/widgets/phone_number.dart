import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_phone/resources/resources.dart';
import 'package:test_app_phone/ui/theme/app_fonts.dart';

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
                style: AppFonts.s16w600,
                children: [
                  const WidgetSpan(
                    alignment: PlaceholderAlignment.belowBaseline,
                    baseline: TextBaseline.alphabetic,
                    child: SizedBox(height: 5),
                  ),
                  const TextSpan(text: '+1 (201) 123 45 67 \n'),
                  TextSpan(
                    text: text,
                    style: AppFonts.s14w600,
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

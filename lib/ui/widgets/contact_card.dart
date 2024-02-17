import 'package:flutter/material.dart';
import 'package:test_app_phone/resources/resources.dart';
import 'package:test_app_phone/ui/theme/app_colors.dart';
import 'package:test_app_phone/ui/theme/app_fonts.dart';
import 'package:test_app_phone/ui/widgets/phone_number.dart';

class ContactCardWidget extends StatelessWidget {
  const ContactCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(AppImages.usa),
            const SizedBox(width: 6),
            const Text(
              'United States',
              style: AppFonts.s16w600,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.25,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.containerBgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Expanded(
                  child: PhoneNumberWidget(text: 'New Jersey'),
                ),
                Expanded(
                  child: PhoneNumberWidget(text: 'Washington'),
                ),
                Expanded(
                  child: PhoneNumberWidget(text: 'New Jersey'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

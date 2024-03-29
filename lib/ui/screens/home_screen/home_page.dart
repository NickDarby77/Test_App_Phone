import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app_phone/resources/resources.dart';
import 'package:test_app_phone/ui/theme/app_colors.dart';
import 'package:test_app_phone/ui/theme/app_fonts.dart';
import 'package:test_app_phone/ui/widgets/choice_chip.dart';
import 'package:test_app_phone/ui/widgets/contact_card.dart';
import 'package:test_app_phone/ui/widgets/dropdown_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    'Landline or Mobile',
    'Landline',
    'Mobile',
  ];
  String? selectedItem = 'Landline or Mobile';

  int defaultIndex = 1;
  List<String> messages = [
    'SMS',
    'MMS',
    'Voice',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16),
          onPressed: () {},
          icon: SvgPicture.asset(AppSvgs.menu),
        ),
        title: const Text(
          '+12021234567',
          style: AppFonts.s16w600,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvgs.chart),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvgs.message),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvgs.notifications),
          ),
          const SizedBox(width: 9),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 22),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.containerBgColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            messages.length,
                            (index) => CustomChoiceChip(
                              selected: defaultIndex == index,
                              label: messages[index],
                              onSelected: (value) {
                                setState(() {
                                  defaultIndex = value ? index : defaultIndex;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonWidget(
                          selectedItem: selectedItem,
                          items: items,
                          onChanged: (String? itemText) {
                            setState(() {
                              selectedItem = itemText;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SvgPicture.asset(AppSvgs.check),
                            const SizedBox(width: 9),
                            const Text(
                              'Show number without verification',
                              style: AppFonts.s15w400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: ContactCardWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

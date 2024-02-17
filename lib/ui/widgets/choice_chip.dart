import 'package:flutter/material.dart';
import 'package:test_app_phone/ui/theme/app_colors.dart';

class CustomChoiceChip extends StatelessWidget {
  final bool selected;
  final String label;
  final void Function(bool value)? onSelected;

  const CustomChoiceChip({
    Key? key,
    required this.selected,
    required this.label,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      label: Text(label),
      labelStyle: TextStyle(
        color: selected ? const Color(0xff29364E) : const Color(0xFF8693A3),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      selected: selected,
      selectedColor: AppColors.selectedColor,
      disabledColor: Colors.white,
      labelPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      onSelected: onSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: const BorderSide(
          color: Colors.transparent,
        ),
      ),
    );
  }
}

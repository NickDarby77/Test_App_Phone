import 'package:flutter/material.dart';

List<String> messages = [
  'SMS',
  'MMS',
  'Voice',
];

String selectedMessage = 'MMS';

class MessageChoiceChip extends StatelessWidget {
  const MessageChoiceChip({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onSelected,
  });

  final bool isSelected;
  final String title;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ChoiceChip(
        showCheckmark: false,
        onSelected: onSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: const BorderSide(color: Colors.transparent),
        ),
        selectedColor: const Color(0xFFBFFF07),
        disabledColor: Colors.white,
        backgroundColor: isSelected ? const Color(0xFFBFFF07) : Colors.white,
        label: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected
                  ? const Color(0xff29364E)
                  : const Color(0xFF8693A3),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        selected: isSelected,
      ),
    );
  }
}

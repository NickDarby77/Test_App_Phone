import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_app_phone/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.usa).existsSync(), isTrue);
  });
}

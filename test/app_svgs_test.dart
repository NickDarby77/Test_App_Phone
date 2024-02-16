import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_app_phone/resources/resources.dart';

void main() {
  test('app_svgs assets test', () {
    expect(File(AppSvgs.chart).existsSync(), isTrue);
    expect(File(AppSvgs.check).existsSync(), isTrue);
    expect(File(AppSvgs.menu).existsSync(), isTrue);
    expect(File(AppSvgs.message).existsSync(), isTrue);
    expect(File(AppSvgs.mobile).existsSync(), isTrue);
    expect(File(AppSvgs.notifications).existsSync(), isTrue);
    expect(File(AppSvgs.s).existsSync(), isTrue);
    expect(File(AppSvgs.usa).existsSync(), isTrue);
    expect(File(AppSvgs.v).existsSync(), isTrue);
  });
}

// Imports the Flutter Driver API.
import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_test/flutter_test.dart' as ft;
import 'package:testing/utils/validate_email.dart';
import 'package:test/test.dart';

void main() {
  group('Login form tests', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver?.close();
    });

    final fieldFinderEmail = find.byValueKey('authEmailKey');
    final fieldFinderPhone = find.byValueKey('authPhoneKey');
    final fieldFinderSubmit = find.text('Отправить');

    test('loginTest', () async{
      await driver?.tap(fieldFinderEmail);
      await driver?.enterText('text@text.com');
      await driver?.tap(fieldFinderPhone);
      await driver?.enterText('2');
      await driver?.tap(fieldFinderSubmit);
    });
    // TODO: write tests
  });

  group('Register form tests', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver!.close();
      }
    });
  });
}

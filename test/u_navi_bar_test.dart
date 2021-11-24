import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:u_navi_bar/u_navi_bar.dart';

void main() {
  const MethodChannel channel = MethodChannel('u_navi_bar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await UNaviBar.platformVersion, '42');
  });
}

import 'dart:js';

@TestOn('browser')
import 'package:test/test.dart';
import 'bridge_interop.dart' as interop;

void main() {
  test('Javascript bridge', () {
    expect(context['bridge'].apply(null), 'cat');
    expect(interop.bridge(), 'cat');
  });
}

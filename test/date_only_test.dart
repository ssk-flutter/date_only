import 'package:flutter_test/flutter_test.dart';

import 'package:date_only/date_only.dart';

void main() {
  test('adds one to input values', () {
    final calculator = DateOnly();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}

import 'package:flutter_test/flutter_test.dart';

import 'package:date_only/date_only.dart';

void main() {
  test('fromDateTime', () {
    final dateTime = DateTime(1980, 7, 26, 1, 1, 1, 1);
    final dateOnly = DateOnly.fromDateTime(dateTime);
    expect(dateOnly.year, dateTime.year);
    expect(dateOnly.month, dateTime.month);
    expect(dateOnly.day, dateTime.day);
  });

  test('now', () {
    final dateOnly = DateOnly.now();
    print('now is $dateOnly');
  });



}

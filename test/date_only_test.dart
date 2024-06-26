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

  test('toDateTime', () {
    final dateOnly = DateOnly.today();
    final dateTime = dateOnly.toDateTime();
    expect(dateOnly.year, dateTime.year);
    expect(dateOnly.month, dateTime.month);
    expect(dateOnly.day, dateTime.day);
    expect(dateTime.hour, 0);
    expect(dateTime.minute, 0);
    expect(dateTime.second, 0);
  });

  test('today', () {
    final dateOnly = DateOnly.today();
    print('today is $dateOnly');
  });

  test('toString', () {
    final dateTime = DateTime(1980, 7, 26, 1, 1, 1, 1);
    final dateOnly = DateOnly.fromDateTime(dateTime);
    expect(dateOnly.toString(), '1980-07-26');
  });

  test('compare equals', () {
    final dateOnly1 = DateOnly.fromDateTime(DateTime(1980, 7, 26));
    final dateOnly2 = DateOnly.fromDateTime(DateTime(1980, 7, 26));
    expect(dateOnly1 == dateOnly2, true);
  });

  test('compare not equals', () {
    final dateOnly1 = DateOnly.fromDateTime(DateTime(1980, 7, 26));
    final dateOnly2 = DateOnly.fromDateTime(DateTime(1980, 7, 27));
    expect(dateOnly1 == dateOnly2, false);
  });

  test('parse', () {
    final dateOnly = DateOnly.parse('1980-07-26');
    expect(dateOnly.year, 1980);
    expect(dateOnly.month, 7);
    expect(dateOnly.day, 26);
  });

  test('extension DateTime.toDateOnly', () {
    final dateTime = DateTime(1980, 7, 26, 1, 1, 1, 1);
    final dateOnly = dateTime.toDateOnly();
    expect(dateOnly.year, dateTime.year);
    expect(dateOnly.month, dateTime.month);
    expect(dateOnly.day, dateTime.day);
  });

  test('copyWith', () {
    final dateOnly = DateOnly.fromDateTime(DateTime(1980, 7, 26));
    final newDateOnly = dateOnly.copyWith(year: 1981, month: 8, day: 27);
    expect(newDateOnly.year, 1981);
    expect(newDateOnly.month, 8);
    expect(newDateOnly.day, 27);
  });
}

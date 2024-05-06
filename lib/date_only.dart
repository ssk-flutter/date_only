library date_only;

/// DateOnly for present year / month / day only.
class DateOnly {
  /// default constructor
  DateOnly({
    required this.year,
    required this.month,
    required this.day,
  });

  final int year;
  final int month;
  final int day;

  /// factory fromDateTime
  factory DateOnly.fromDateTime(DateTime dateTime) => DateOnly(
        year: dateTime.year,
        month: dateTime.month,
        day: dateTime.day,
      );

  /// toDateTime
  /// Convert to DateTime
  /// Warning: Time is set to 00:00:00
  DateTime toDateTime() => DateTime(year, month, day);

  /// factory now
  @Deprecated('Use DateOnly.today() instead')
  factory DateOnly.now() => DateOnly.today();

  /// factory today
  factory DateOnly.today() => DateOnly.fromDateTime(DateTime.now());

  @override
  String toString() {
    String addLeadingZeroIfNeeded(int value) {
      if (value < 10) return '0$value';
      return value.toString();
    }

    final String yearLabel = addLeadingZeroIfNeeded(year);
    final String monthLabel = addLeadingZeroIfNeeded(month);
    final String dayLabel = addLeadingZeroIfNeeded(day);

    return '$yearLabel-$monthLabel-$dayLabel';
  }
}

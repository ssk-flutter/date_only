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

  /// factory now
  factory DateOnly.now() => DateOnly.fromDateTime(DateTime.now());

  @override
  String toString() {
    String _addLeadingZeroIfNeeded(int value) {
      if (value < 10) return '0$value';
      return value.toString();
    }

    final String yearLabel = _addLeadingZeroIfNeeded(year);
    final String monthLabel = _addLeadingZeroIfNeeded(month);
    final String dayLabel = _addLeadingZeroIfNeeded(day);

    return '$DateOnly($yearLabel-$monthLabel-$dayLabel)';
  }
}

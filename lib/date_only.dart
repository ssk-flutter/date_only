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

  /// equals
  /// Compare two DateOnly objects
  @override
  bool operator ==(Object other) {
    if (other is DateOnly) {
      return year == other.year && month == other.month && day == other.day;
    }
    return false;
  }

  @override
  int get hashCode {
    return year.hashCode ^ month.hashCode ^ day.hashCode;
  }

  @override
  String toString() {
    return '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  factory DateOnly.parse(String s) {
    final parts = s.split('-');
    return DateOnly(
      year: int.parse(parts[0]),
      month: int.parse(parts[1]),
      day: int.parse(parts[2]),
    );
  }
}

<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Present only date field (year, month, day)

## Features

```dart
DateOnly dateOnly = DateOnly.now();

print('year: ${dateOnly.year}');
print('month: ${dateOnly.month}');
print('day: ${dateOnly.day}');
```
## Getting started

```shell
dart pub add date_only
```

## Usage

```dart
import 'package:date_only/date_only.dart';

final DateOnly dateOnlyForNow = DateOnly.now();
final DateOnly dateOnlyFromDateTime = DateOnly.fromDateTime(DateTime(...));
```

## Additional information

Thank you very march :)
extension ToMyTimeZone on DateTime {
  DateTime get toMyTime {
    return add(timeZoneOffset);
  }
}

import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  int get toMinutes => hour * 60 + minute;
  bool isBetween(TimeOfDay start, TimeOfDay end) {
    return toMinutes >= start.toMinutes && toMinutes <= end.toMinutes;
  }

  int clockwiseMinutesBetween(TimeOfDay end) {
    // Convert both times to total minutes since midnight
    int startMinutes = hour * 60 + minute;
    int endMinutes = end.hour * 60 + end.minute;

    /// is currently 22:00, and you want to know how many minutes until 06:00 the
    /// next morning, this function will return the correct result of 8 hours (480
    /// minutes) instead of -16 hours (-960 minutes).

    // Calculate the difference in minutes
    int diffMinutes = endMinutes - startMinutes;

    // If the difference is negative, adjust to make it clockwise
    if (diffMinutes < 0) {
      diffMinutes += 24 * 60; // Add 24 hours worth of minutes
    }

    return diffMinutes;
  }
}

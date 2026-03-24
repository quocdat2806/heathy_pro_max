part of 'calendar_bloc.dart';

abstract class CalendarEvent {
  const CalendarEvent();
}

class LoadCalendarMonth extends CalendarEvent {
  final DateTime month;
  const LoadCalendarMonth(this.month);
}

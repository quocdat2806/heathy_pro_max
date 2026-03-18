import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';

class AppToastification {
  static void showToast({required String message, ToastificationType type = ToastificationType.info}) {
    toastification.show(
      type: type,
      style: ToastificationStyle.flatColored,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.bottomCenter,
      borderRadius: BorderRadius.circular(20),
    );
  }
}

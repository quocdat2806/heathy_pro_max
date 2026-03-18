import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.maxLines = 1,
    this.readOnly = false,
    this.focusNode,
    this.style,
    this.textAlign = TextAlign.start,
    this.maxLength,
    this.onChanged,
    this.inputFormatters,
    this.enabled = true,
    this.onFieldSubmitted,
    this.textInputAction,
    this.filledColor,
  });

  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final int maxLines;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLength;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final Color? filledColor;

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimens.defaultBorderRadius),
      borderSide: BorderSide.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      maxLines: maxLines,
      readOnly: readOnly,
      focusNode: focusNode,
      style: style,
      textAlign: textAlign,
      maxLength: maxLength,

      onChanged: onChanged,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        hintStyle: context.bodySmall,
        labelText: label,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: filledColor ?? Colors.grey.shade100,
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(),
        errorBorder: _border(),
        focusedErrorBorder: _border(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}

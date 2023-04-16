import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.validator,
      this.hintText,
      this.maxLines,
      this.minLines,
      required this.textController,
      this.keyboardType,
      this.withOutline,
      this.withContentPadding,
      this.enabled,
      this.initialValue,
      this.obscureText = false})
      : super(key: key);

  final bool? withOutline;
  final bool? withContentPadding;
  final String? Function(String?)? validator;
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final TextEditingController textController;
  final TextInputType? keyboardType;
  final bool? enabled;
  final String? initialValue;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textController,
      maxLines: maxLines,
      minLines: minLines,
      initialValue: initialValue,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: withContentPadding ?? true ? null : EdgeInsets.zero,
          border: withOutline ?? true
              ? const OutlineInputBorder()
              : InputBorder.none,
          hintText: hintText),
      validator: validator,
    );
  }
}

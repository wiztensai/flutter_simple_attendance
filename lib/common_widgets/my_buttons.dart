import 'package:absensi_nanang/common_widgets/my_fonts.dart';
import 'package:flutter/material.dart';

class MyButtonPrimary extends StatelessWidget {
  const MyButtonPrimary(
      {required this.title, this.onPressed, this.style, super.key});
  final Function()? onPressed;
  final String title;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: MyFontButton(text: title),
      style: style,
    );
  }
}

class MyButtonPrimaryTwoLine extends StatelessWidget {
  const MyButtonPrimaryTwoLine(
      {required this.title,
      required this.subtitle,
      this.onPressed,
      this.style,
      super.key});
  final Function()? onPressed;
  final String title;
  final String subtitle;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        children: [
          MyFontButton(text: title),
          MyFontDesc(text: subtitle),
        ],
      ),
      style: style,
    );
  }
}

class MyButtonText extends StatelessWidget {
  const MyButtonText(
      {required this.title,
      this.textAlign,
      this.color,
      this.style,
      this.onPressed,
      super.key});
  final Function()? onPressed;
  final String title;
  final ButtonStyle? style;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: onPressed,
      child: MyFontButton(
          text: title, bold: true, textAlign: textAlign, color: color),
    );
  }
}

class MyButtonOutline extends StatelessWidget {
  const MyButtonOutline({required this.title, this.onPressed, super.key});
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: MyFontButton(text: title),
    );
  }
}

class MyButtonSubmitAppbar extends StatelessWidget {
  const MyButtonSubmitAppbar(
      {required this.title,
      this.onPressed,
      this.style,
      this.textColor,
      super.key});
  final Function()? onPressed;
  final String title;
  final ButtonStyle? style;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: MyFontAppbar(text: title, bold: true, color: textColor),
      style: style,
    );
  }
}

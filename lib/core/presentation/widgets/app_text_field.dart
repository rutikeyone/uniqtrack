import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uniqtrack/core/common/context_extension.dart';
import 'package:uniqtrack/core/theme/app_diments.dart';

class AppTextField extends StatefulWidget {
  final bool enabled;
  final void Function(String)? onFieldSubmitted;
  final bool isReadOnly;
  final int minLines;
  final int maxLines;
  final bool autofocus;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputFormatter? inputFormatter;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final TextStyle? errorTextStyles;
  final Radius? borderRadius;
  final Color? borderColor;
  final TextStyle? style;
  final bool obscureText;

  const AppTextField({
    this.enabled = true,
    this.isReadOnly = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.autofocus = false,
    this.controller,
    this.keyboardType,
    this.inputFormatter,
    this.validator,
    this.textInputAction,
    this.onChanged,
    this.hintText,
    this.hintTextStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.errorTextStyles,
    this.onFieldSubmitted,
    this.borderRadius,
    this.borderColor,
    this.style,
    this.obscureText = false,
    super.key,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final List<TextInputFormatter> inputFormatters;

  @override
  void initState() {
    inputFormatters =
        widget.inputFormatter != null ? [widget.inputFormatter!] : [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      enabled: widget.enabled,
      onFieldSubmitted: widget.onFieldSubmitted,
      readOnly: widget.isReadOnly,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      autofocus: widget.autofocus,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      inputFormatters: inputFormatters,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      style: widget.style,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.colorScheme.secondary,
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle,
        alignLabelWithHint: true,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        errorText: widget.errorText,
        errorMaxLines: 2,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              widget.borderRadius ?? const Radius.circular(AppDiments.dm12),
            ),
            borderSide: const BorderSide(
              width: AppDiments.dm1,
            )),
        contentPadding: EdgeInsets.only(
          top: AppDiments.dm16,
          bottom: AppDiments.dm16,
          left: widget.prefixIcon != null ? AppDiments.dm0 : AppDiments.dm16,
          right: widget.suffixIcon != null ? AppDiments.dm0 : AppDiments.dm16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            widget.borderRadius ?? const Radius.circular(AppDiments.dm12),
          ),
          borderSide:const BorderSide(
            width: AppDiments.dm0,
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            widget.borderRadius ?? const Radius.circular(AppDiments.dm12),
          ),
          borderSide: const BorderSide(
            width: AppDiments.dm0,
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              widget.borderRadius ?? const Radius.circular(AppDiments.dm12)),
          borderSide: const BorderSide(
            width: AppDiments.dm0,
            color: Colors.transparent,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            widget.borderRadius ?? const Radius.circular(AppDiments.dm12),
          ),
          borderSide: const BorderSide(
            width: AppDiments.dm0,
            color: Colors.transparent,
          ),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}

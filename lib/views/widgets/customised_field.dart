import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'customised_text.dart';

class CustomisedField extends StatelessWidget {
  final Widget? prefix;
  final Widget? suffix;
  final String? labelText;
  final String? hintText;
  final String? title;
  final String? obscuringCharacter;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final bool? enabled;
  final bool enableCopy;
  final bool obscureText;
  final bool? autoFocus;
  final Color? hintColor;
  final Color? borderColor;
  final Color? fillColor;
  final Color? textColor;
  final Color? color;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;

  const CustomisedField({
    super.key,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.validator,
    this.labelText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines,
    this.onTap,
    this.autoFocus = false,
    this.focusNode,
    this.maxLength,
    this.title,
    this.enabled,
    this.inputFormatters,
    this.hintColor,
    this.fillColor,
    this.enableCopy = true,
    this.hintText,
    this.color,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: borderColor ?? const Color(0xffE8E8E8),
      ),
      borderRadius: BorderRadius.circular(8),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 7),
            child: CustomisedText(
              labelText!,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: color ?? AppColors.dudu,
            ),
          ),
        TextFormField(
          enableInteractiveSelection: enableCopy,
          cursorColor: AppColors.primary,
          cursorWidth: 1,
          focusNode: focusNode,
          textCapitalization: TextCapitalization.sentences,
          maxLines: obscureText ? 1 : maxLines,
          autofocus: autoFocus!,
          enabled: enabled ?? true,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          style: const TextStyle(
            fontFamily: 'inter',
            color: Color(0xff101010),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          readOnly: readOnly,
          decoration: InputDecoration(
            counterStyle: const TextStyle(fontSize: 0),
            prefix: const SizedBox(width: 25),
            contentPadding:
                EdgeInsets.symmetric(vertical: maxLines != null ? 10 : 0),
            suffix: suffix,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'inter',
              color: hintColor ?? const Color(0xffBDBDBD),
              fontSize: 12.8,
              fontWeight: FontWeight.w600,
            ),
            border: border,
            filled: true,
            fillColor: AppColors.lightgrey,
            errorBorder: border,
            enabledBorder: border,
            focusedBorder: border,
            focusedErrorBorder: border,
            disabledBorder: border,
          ),
          onTap: onTap,
          obscureText: obscureText,
          obscuringCharacter: '●',
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: textInputType,
          onChanged: onChanged,
          validator: validator,
        )
      ],
    );
  }
}

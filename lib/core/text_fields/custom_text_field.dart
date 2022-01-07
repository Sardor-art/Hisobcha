import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hisobcha/core/theme/app_colors.dart';
import 'package:hisobcha/core/theme/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final bool? showError;
  final TextEditingController? controller;
  final bool? autoFocus;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final String? prefixText;
  final String? errorText;
  final TextInputAction? inputAction;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final String? hintText;
  final BuildContext? context;
  final Color fillColor;
  final Color? textColor;
  final Color hintColor;
  final Color? labelColor;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function()? onTap;
  final bool? readOnly;
  final double? labelPadding;
  final bool? isResizable;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? icon;
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final double? topMargin;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.showError,
    this.controller,
    this.autoFocus,
    this.onChanged,
    this.keyboardType,
    this.prefixText,
    this.fillColor = AppColors.white60,
    this.isResizable,
    this.errorText,
    this.inputAction,
    this.currentFocus,
    this.nextFocus,
    this.hintText,
    this.context,
    this.onTap,
    this.labelPadding = 6,
    this.labelStyle,
    this.readOnly = false,
    this.textColor = AppColors.black,
    this.hintColor = AppColors.middleGray4,
    this.labelColor = AppColors.darkGray2,
    this.textStyle = AppTextStyles.prefixIcon,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 12,
    ),
    this.height,
    this.topMargin = 0,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: topMargin,
        ),
        if (labelText != null)
          RichText(
            text: TextSpan(
              text: labelText,
              style: labelStyle ??
                  TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: labelColor,
                  ),
            ),
          ),
        SizedBox(height: labelPadding),
        SizedBox(
          height: height,
          child: TextFormField(
            readOnly: readOnly ?? false,
            style: textStyle,
            controller: controller,
            focusNode: currentFocus,
            onTap: onTap,
            maxLines: (isResizable ?? false) ? null : 1,
            autofocus: autoFocus ?? false,
            textCapitalization: TextCapitalization.sentences,
            onChanged: onChanged,
            onFieldSubmitted: (term) {},
            textInputAction: inputAction,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              contentPadding: contentPadding,
              filled: true,
              icon: icon,
              prefixText: prefixText,
              hintText: hintText,
              fillColor: fillColor,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: hintColor,
                  ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.assets, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.red, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.red, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorText: showError ?? false ? errorText : null,
            ),
            cursorColor: AppColors.assets,
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hisobcha/core/theme/app_colors.dart';

class CustomMaskTextField extends StatelessWidget {
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
  final Color? hintColor;
  final Function()? onTap;
  final Widget? prefixIcon;
  final bool? readOnly;
  final double? labelPadding;
  final double? topMargin;
  final bool? isResizable;
  final TextStyle? lableStyle;
  final TextInputFormatter mask;

  const CustomMaskTextField({
    Key? key,
    this.labelText = '',
    this.showError,
    this.controller,
    this.autoFocus,
    this.onChanged,
    this.hintColor,
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
    this.labelPadding = 4,
    this.lableStyle,
    this.readOnly = false,
    required this.mask,
    this.topMargin = 0,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: topMargin),
        Visibility(
          visible: labelText != null,
          child: RichText(
            text: TextSpan(
              text: labelText,
              style: lableStyle ??
                  const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.black,
                  ),
            ),
          ),
        ),
        SizedBox(height: labelPadding),
        TextFormField(
          readOnly: readOnly ?? false,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          controller: controller,
          focusNode: currentFocus,
          onTap: onTap,
          maxLines: (isResizable ?? false) ? null : 1,
          autofocus: autoFocus ?? false,
          textCapitalization: TextCapitalization.sentences,
          onChanged: onChanged,
          inputFormatters: [mask],
          onFieldSubmitted: (term) {},
          textInputAction: inputAction,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            filled: true,
            prefixIcon: prefixIcon,
            hintText: hintText,
            fillColor: fillColor,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: hintColor ?? AppColors.middleGray4,
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
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(20));

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800),
        ),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        errorText: errorMessage,
        focusColor: colors.primary,
        prefixIcon: Icon(
          Icons.supervised_user_circle_outlined,
          color: colors.primary,
        ),
        // suffix: Icon(Icons.error_outline), icono al final del field
        // icon: Icon(Icons.favorite_outline) icono fuera del field
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../main.dart';
import '../notifier/bool_notifier.dart';

class TextFieldWidget extends ConsumerWidget {
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final GestureTapCallback? onTap;
  final String? autofillHints;
  final StateNotifierProvider<BoolNotifier, bool>? notifierObscure;
  final StateNotifierProvider<BoolNotifier, bool>? notifierRequired;
  final StateNotifierProvider<BoolNotifier, bool> emptyNotifier = StateNotifierProvider<BoolNotifier, bool>((ref) => BoolNotifier(true));
  TextFieldWidget(
      this.label,
      {
        this.notifierObscure,
        this.autofillHints,
        this.keyboardType,
        this.onTap,
        this.controller,
        this.obscureText = false,
        this.validator,
        this.notifierRequired,
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var label = this.label;
    if (notifierRequired != null) {
      label += '*';
    }

    controller?.addListener(() {
      var value = controller!.text;
      if (value.isEmpty) {
        ref.read(emptyNotifier.notifier).set(true);
      } else {
        ref.read(emptyNotifier.notifier).set(false);
      }
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          autofillHints: autofillHints == null ? [] : [autofillHints!],
          onTap: onTap,
          autovalidateMode: AutovalidateMode.always,
          readOnly: onTap != null,
          enableSuggestions: true,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (_){
            App.log.d('onFieldSubmitted');
          },
          validator: (_){
            if (_ == null || _.isEmpty) {
              return null;
            }
            return validator?.call(_);
          },
          style: GoogleFonts.ptSans(
            color: App.colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: label.toLowerCase(),
            contentPadding: EdgeInsets.zero,
            errorText: (notifierRequired == null) ? null : (ref.watch(notifierRequired!) && ref.watch(emptyNotifier)) ? App.s.required_field : null,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            hintStyle: GoogleFonts.ptSans(
              color: App.colorScheme.secondary.withOpacity(0.5),
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none,
          ),

          cursorColor: App.colorScheme.secondary
      ),
    );
  }
}



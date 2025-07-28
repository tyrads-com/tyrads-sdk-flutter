import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';

class AcmoTextFormField extends StatefulWidget {
  const AcmoTextFormField({
    super.key,
    this.value,
    required this.hintText,
    required this.title,
    required this.onChanged,
    this.readOnly = false,
  });

  final String? value;
  final String hintText;
  final String title;
  final void Function(String?)? onChanged;
  final bool readOnly;

  @override
  State<AcmoTextFormField> createState() => _AcmoTextFormFieldState();
}

class _AcmoTextFormFieldState extends State<AcmoTextFormField> {
  late ValueNotifier<String?> _error;

  @override
  void initState() {
    super.initState();
    _error = ValueNotifier<String?>(null);
  }

  @override
  void dispose() {
    _error.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          onChanged: widget.onChanged,
          initialValue: widget.value,
          validator: (text) {
            if (text == null || text.isEmpty) {
              _error.value = 'This field can’t be empty';
              return '';
            } else {
              _error.value = null;
              return null;
            }
          },
          readOnly: widget.readOnly,
          onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(14),
            hintText: widget.hintText,
            errorText: null,
            errorStyle: const TextStyle(
              height: 0,
              fontSize: 0,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE0E2E7),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFF26A1C8),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFF554A),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFF554A),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        if (_error.value != null)
          const SizedBox(
            height: 6,
          ),
        ValueListenableBuilder(
          valueListenable: _error,
          builder: (context, errorMessage, child) {
            return errorMessage != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Assets.icons.info.image(
                        width: 16,
                        height: 16,
                        color: const Color(0xFFFF554A),
                      ),
                      Text(
                        errorMessage,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xFFFF554A),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}

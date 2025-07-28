import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcmoOutlinedButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  const AcmoOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  State<AcmoOutlinedButton> createState() => _AcmoOutlinedButtonState();
}

class _AcmoOutlinedButtonState extends State<AcmoOutlinedButton> {
  bool _isPressed = false;

  void _setPressed(bool pressed) {
    setState(() {
      _isPressed = pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _setPressed(true),
      onTapUp: (_) {
        _setPressed(false);
        widget.onPressed();
      },
      onTapCancel: () => _setPressed(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 2),
        height: 38,
        decoration: BoxDecoration(
          color: _isPressed ? Theme.of(context).colorScheme.secondary : Colors.transparent,
          border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: GoogleFonts.poppins(
              color: _isPressed ? Colors.white : Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

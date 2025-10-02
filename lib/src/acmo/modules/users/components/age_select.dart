import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class AcmoComponentAgeSelector extends StatefulWidget {
  const AcmoComponentAgeSelector(
      {super.key, required this.onChanged, this.init = 18, this.min = 13});
  final Function(int) onChanged;
  final int init;
  final int min;

  @override
  State<AcmoComponentAgeSelector> createState() =>
      _AcmoComponentAgeSelectorState();
}

class _AcmoComponentAgeSelectorState extends State<AcmoComponentAgeSelector> {
  late int _selectedItem = widget.init - widget.min;
  final itemExtent = 70.0;
  late final _scrollController =
      FixedExtentScrollController(initialItem: _selectedItem);
  @override
  void initState() {
    _scrollController.addListener(onChange);
    super.initState();
  }

  onChange() {
    if (mounted) {
      setState(() {
        _selectedItem = _scrollController.selectedItem;
      });
    }
    widget.onChanged(_selectedItem + widget.min);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 74,
        child: RotatedBox(
          quarterTurns: -1,
          child: InkWell(
            onTap: onChange,
            child: ListWheelScrollView.useDelegate(
                controller: _scrollController,
                itemExtent: itemExtent,
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 100,
                    builder: (c, i) {
                      var isSelected = i == _selectedItem;
                      return RotatedBox(
                          quarterTurns: 1,
                          child: Stack(
                            children: [
                              Opacity(
                                opacity: isSelected ? 1 : 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFF6F6F6),
                                      //  border: Border.all(),
                                      borderRadius: BorderRadius.circular(8)),
                                  width: itemExtent,
                                  height: itemExtent,
                                ),
                              ),
                              SizedBox(
                                width: itemExtent,
                                height: itemExtent,
                                child: Center(
                                  child: Text(
                                    (i + widget.min).toString(),
                                    style: GoogleFonts.poppins(
                                      color: isSelected
                                          ? (Tyrads.instance.colorMain ?? Theme.of(context)
                                              .colorScheme
                                              .secondary)
                                          : Colors.black54,
                                      fontSize: isSelected ? 30 : 22,
                                      fontWeight: isSelected
                                          ? FontWeight.bold
                                          : FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    })),
          ),
        ));
  }
}

// File: filter_tabs.dart
import 'package:flutter/material.dart';

class FilterTabs extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int) onSelected;

  const FilterTabs({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onSelected
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedIndex == index;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FilterChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tabs[index],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (index == 1) ...[
                      const SizedBox(width: 4),
                      Container(
                        width: 16,
                        height: 16,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                backgroundColor: Colors.white,
                selectedColor: Colors.black,
                selected: isSelected,
                showCheckmark: false, // Remove the checkmark
                onSelected: (bool selected) {
                  onSelected(index);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: isSelected ? Colors.transparent : Colors.grey.shade300,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
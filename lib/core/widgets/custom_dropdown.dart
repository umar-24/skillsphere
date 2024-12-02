import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items; // Dynamic list of items
  final String title; // Dropdown title

  const CustomDropdown({Key? key, required this.items, required this.title})
      : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool _isExpanded = false; // Track whether the dropdown is expanded

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey), // Border for styling
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded; // Toggle dropdown state
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up // Up arrow
                        : Icons.keyboard_arrow_down, // Down arrow
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    title: Text(
                      widget.items[index],
                      style: const TextStyle(fontSize: 14),
                    ),
                    // onTap: () {
                    //   // Handle item click (if needed)
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //     content: Text('Selected: ${widget.items[index]}'),
                    //   ));
                    // },
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

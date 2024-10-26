import 'package:flutter/material.dart';

class AcmoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AcmoAppBar({
    Key? key,
    required this.titleText,
    this.onBack,
  }) : super(key: key);
  final String titleText;
  final Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          if (onBack != null) {
            onBack!();
          } else {
            Navigator.pop(context);
          }
        },
      ),
      title: Text(titleText),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class AcmoAppBarWithSearch extends StatefulWidget
    implements PreferredSizeWidget {
  const AcmoAppBarWithSearch({
    Key? key,
    required this.titleText,
    required this.onSearch,
    this.onBack,
  }) : super(key: key);
  final String titleText;
  final Function(String) onSearch;
  final Function()? onBack;

  @override
  State<AcmoAppBarWithSearch> createState() => _AcmoAppBarWithSearchState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _AcmoAppBarWithSearchState extends State<AcmoAppBarWithSearch> {
  var isSearching = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_sharp,
        ),
        onPressed: () {
          if (widget.onBack != null) {
            widget.onBack!();
          } else {
            Navigator.pop(context);
          }
        },
      ),
      title: !isSearching
          ? Text(widget.titleText)
          : TextFormField(
              showCursor: true,
              autofocus: true,
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
              onChanged: (value) {
                widget.onSearch(value);
              },
            ),
      actions: [
        if (isSearching)
          IconButton(
              onPressed: () {
                if (mounted) {
                  setState(() {
                    isSearching = false;
                  });
                }
              },
              icon: const Icon(Icons.close)),
        if (!isSearching)
          IconButton(
              onPressed: () {
                if (mounted) {
                  setState(() {
                    isSearching = true;
                  });
                }
              },
              icon: const Icon(
                Icons.search,
                size: 16,
              )),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../provider/inappwebview_provider.dart';

class AppBarSearchTextField extends StatelessWidget {
  const AppBarSearchTextField({
    super.key,
    required this.providerFalse,
    required this.providerTrue,
  });

  final InAppWebViewProvider providerFalse;
  final InAppWebViewProvider providerTrue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 46,
        child: TextField(
          onSubmitted: (value) {
            providerFalse.search(value);
          },
          textInputAction: TextInputAction.search,
          cursorColor: Colors.black54,
          controller: providerTrue.txtSearch,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus!.unfocus(),
          decoration: InputDecoration(
            hintText: 'https://www.google.com',
            filled: true,
            fillColor: const Color(0xfff5f5f5),
            contentPadding: const EdgeInsets.only(bottom: 0, left: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.05)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.05)),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../provider/inappwebview_provider.dart';

class AppBarActionButtons extends StatelessWidget {
  const AppBarActionButtons({
    super.key,
    required this.providerFalse,
  });

  final InAppWebViewProvider providerFalse;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            providerFalse.search(providerFalse.txtSearch.text);
          },
          icon: Icon(
            Icons.search_rounded,
            size: height * 0.034,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border_rounded,
            size: height * 0.034,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.file_download_outlined, size: height * 0.034),
        ),
      ],
    );
  }
}

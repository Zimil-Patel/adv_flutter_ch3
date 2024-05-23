import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/provider/inappwebview_provider.dart';
import 'package:flutter/material.dart';

import 'app_bar_actions.dart';
import 'app_bar_search_field.dart';

class InAppWebViewAppBar extends StatelessWidget {
  const InAppWebViewAppBar({
    super.key,
    required this.providerTrue,
    required this.providerFalse,
  });

  final InAppWebViewProvider providerTrue, providerFalse;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      shadowColor: Colors.black.withOpacity(0.4),
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // SEARCH TEXT FIELD
          AppBarSearchTextField(
              providerFalse: providerFalse, providerTrue: providerTrue),

          // SEARCH, STAR, DOWNLOAD
          AppBarActionButtons(providerFalse: providerFalse),
        ],
      ),
    );
  }
}

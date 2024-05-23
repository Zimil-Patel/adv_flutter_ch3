import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/provider/inappwebview_provider.dart';
import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/view/components/web_view_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'inappwebview_appbar.dart';
import 'inappwebview_bottom_action_bar.dart';

class InAppWebViewConnectivityPage extends StatelessWidget {
  const InAppWebViewConnectivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    InAppWebViewProvider providerTrue =
        Provider.of<InAppWebViewProvider>(context, listen: true);
    InAppWebViewProvider providerFalse =
        Provider.of<InAppWebViewProvider>(context, listen: false);

    return Scaffold(
      // APP BAR WITH SEARCH TEXT FIELD
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: InAppWebViewAppBar(
          providerTrue: providerTrue,
          providerFalse: providerFalse,
        ),
      ),

      // BODY OF SCREEN
      body: Column(
        children: [
          // WEB VIEW BOX
          WebViewBox(providerTrue: providerTrue, providerFalse: providerFalse),

          // BOTTOM ACTION BAR
          InAppWebBottomActionBar(
            providerTrue: providerTrue,
            providerFalse: providerFalse,
          ),
        ],
      ),
    );
  }
}

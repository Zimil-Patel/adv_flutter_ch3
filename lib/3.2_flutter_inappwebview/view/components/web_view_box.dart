import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../provider/inappwebview_provider.dart';

class WebViewBox extends StatelessWidget {
  const WebViewBox({
    super.key,
    required this.providerTrue,
    required this.providerFalse,
  });

  final InAppWebViewProvider providerTrue;
  final InAppWebViewProvider providerFalse;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          // IN APP WEB VIEW
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri('https://www.google.com/'),
            ),
            onWebViewCreated: (controller) =>
                providerTrue.webController = controller,
            onProgressChanged: (controller, progress) =>
                providerFalse.updateProgressValue(progress),
          ),

          // WEBSITE LOADING PROGRESS INDICATOR
          if (providerTrue.progressValue < 1)
            Align(
              alignment: Alignment.bottomCenter,
              child: LinearProgressIndicator(
                value: providerTrue.progressValue,
                minHeight: 2,
                color: Colors.blueAccent,
              ),
            ),
        ],
      ),
    );
  }
}

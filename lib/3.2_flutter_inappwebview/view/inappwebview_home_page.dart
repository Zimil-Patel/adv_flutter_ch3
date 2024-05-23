import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/view/components/inappwebview_connectivity_page.dart';
import 'package:flutter/material.dart';

class InAppWebViewHomePage extends StatelessWidget {
  const InAppWebViewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: InAppWebViewConnectivityPage(),
    );
  }
}

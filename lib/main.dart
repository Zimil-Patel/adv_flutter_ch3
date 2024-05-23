import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/provider/inappwebview_provider.dart';
import 'package:adv_flutter_ch3/global_app/view/global_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* APP LIST

3.1: ConnectivityPlusHomePage()
3.2: InAppWebViewHomePage()

*/

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => InAppWebViewProvider(),
        )
      ],
      child: const GlobalApp(),
    ),
  );
}

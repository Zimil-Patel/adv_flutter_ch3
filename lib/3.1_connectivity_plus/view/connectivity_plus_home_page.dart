import 'package:adv_flutter_ch3/3.1_connectivity_plus/view/components/connectivity_page.dart';
import 'package:flutter/material.dart';

class ConnectivityPlusHomePage extends StatelessWidget {
  const ConnectivityPlusHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConnectivityPage(),
    );
  }
}

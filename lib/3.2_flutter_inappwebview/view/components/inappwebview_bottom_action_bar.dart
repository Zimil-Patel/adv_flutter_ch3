import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../provider/inappwebview_provider.dart';

class InAppWebBottomActionBar extends StatelessWidget {
  const InAppWebBottomActionBar({
    super.key,
    required this.providerTrue,
    required this.providerFalse,
  });

  final InAppWebViewProvider providerTrue, providerFalse;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                providerFalse.webController.goBack();
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: height * 0.034,
              ),
            ),
            IconButton(
              onPressed: () {
                providerFalse.webController.goForward();
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                size: height * 0.034,
              ),
            ),
            IconButton(
              onPressed: () {
                providerFalse.webController.reload();
              },
              icon: Icon(
                Icons.refresh,
                size: height * 0.034,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.looks_one_outlined,
                size: height * 0.034,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz_rounded,
                size: height * 0.034,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

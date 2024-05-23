import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewProvider extends ChangeNotifier{
  TextEditingController txtSearch = TextEditingController();
  late InAppWebViewController webController;
  String searchValue = '';
  double progressValue = 1;

  // PROGRESS VALUE UPDATER
  void updateProgressValue(int value){
    progressValue = value / 100;
    notifyListeners();
  }

  // SEARCH
  void search([String? value]){
    searchValue = value ?? '';
    webController.loadUrl(urlRequest: URLRequest(
      url: WebUri('https://www.google.com/search?q=$searchValue&sca_esv=a83470496b33a403&sxsrf=ADLYWILWAmS2iAmsqP6lDt5a5qU-J9ETQg%3A1716472954754&source=hp&ei=ekxPZpaXJa7P1e8P-PSB0AI&iflsig=AL9hbdgAAAAAZk9aitdbWEyHdmiOjAsxLyexgyckYzfC&ved=0ahUKEwiWvOeF-KOGAxWuZ_UHHXh6ACoQ4dUDCBY&uact=5&oq=flutter&gs_lp=Egdnd3Mtd2l6IgdmbHV0dGVyMgQQIxgnMgoQIxiABBgnGIoFMgoQIxiABBgnGIoFMhAQABiABBixAxhDGIMBGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMgoQABiABBhDGIoFMg0QABiABBixAxhDGIoFSKcUUK0MWK0TcAF4AJABAJgB0wGgAakIqgEFMC41LjG4AQPIAQD4AQGYAgegAssIqAIKwgIHECMYJxjqAsICERAuGIAEGLEDGNEDGIMBGMcBwgILEAAYgAQYsQMYgwHCAg4QLhiABBixAxiDARjUAsICCBAAGIAEGLEDwgIWEC4YgAQYsQMY0QMYQxiDARjHARiKBcICChAuGIAEGEMYigWYAwqSBwUxLjUuMaAH_kA&sclient=gws-wiz'),
    ),);
  }
}
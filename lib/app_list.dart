import 'package:adv_flutter_ch3/3.1_connectivity_plus/view/connectivity_plus_home_page.dart';
import 'package:adv_flutter_ch3/3.2_flutter_inappwebview/view/inappwebview_home_page.dart';

import 'global_app/model/app_list_model.dart';

List<AppModel> appList = [
  AppModel(
    title: '3.1 connectivity_plus',
    widget: const ConnectivityPlusHomePage(),
  ),
  AppModel(
    title: '3.2 3.2 Chrome : flutter_inappwebview Package',
    widget: const InAppWebViewHomePage(),
  ),
];

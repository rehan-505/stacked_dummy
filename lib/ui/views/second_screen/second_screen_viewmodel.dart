import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SecondScreenViewModel extends BaseViewModel {

  final _navServ = locator<NavigationService>();


  void navigateBack() {
    _navServ.back();
  }


}

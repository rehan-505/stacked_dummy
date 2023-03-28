import 'package:stacked_dummy/app/app.locator.dart';
import 'package:stacked_dummy/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navServ = locator<NavigationService>();



  void navigateTOSecondScreen() {
    navServ.navigateToSecondScreenView();
  }


}

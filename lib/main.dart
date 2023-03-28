import 'package:flutter/material.dart';
import 'package:stacked_dummy/app/app.bottomsheets.dart';
import 'package:stacked_dummy/app/app.dialogs.dart';
import 'package:stacked_dummy/app/app.locator.dart';
import 'package:stacked_dummy/app/app.router.dart';
import 'package:stacked_dummy/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:toast/toast.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      initialRoute: Routes.homeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}

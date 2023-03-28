import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_dummy/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    print("HOME SCREEN ON VIEW MODEL READY CALLED");
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceLarge,
                Column(
                  children: [
                    const Text(
                      'Navigate To Second Screen',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    MaterialButton(
                      color: Colors.black,
                      onPressed: viewModel.navigateTOSecondScreen,
                      child: const Text(
                        "Navigate Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                  ],
                ),
            ),
          ),
        ),
      );
  }


  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();


  @override
  // TODO: implement disposeViewModel
  bool get disposeViewModel => false;

  @override
  void onDispose(HomeViewModel viewModel) {
    print("HOME SCREEN ON DISPOSE CALLED");
    super.onDispose(viewModel);
  }

}

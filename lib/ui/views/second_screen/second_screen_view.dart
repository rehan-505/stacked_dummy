import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:toast/toast.dart';

import '../../common/ui_helpers.dart';
import 'second_screen_viewmodel.dart';

class SecondScreenView extends StackedView<SecondScreenViewModel> {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(SecondScreenViewModel viewModel) {
    print("Second SCREEN ON VIEW MODEL READY CALLED".toUpperCase());
    super.onViewModelReady(viewModel);
  }


  @override
  Widget builder(
    BuildContext context,
    SecondScreenViewModel viewModel,
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
                      'Navigate To First Screen',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    MaterialButton(
                      color: Colors.black,
                      onPressed: viewModel.navigateBack,
                      child: const Text(
                        "Navigate Back",
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
  SecondScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecondScreenViewModel();

  @override
  // TODO: implement disposeViewModel
  bool get disposeViewModel => false;

  @override
  void onDispose(SecondScreenViewModel viewModel) {
    print("SECOND SCREEN ON DISPOSE CALLED");
    super.onDispose(viewModel);
  }

}

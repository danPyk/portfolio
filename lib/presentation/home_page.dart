// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/injection_config.dart';
import 'package:portfolio/presentation/home_vm.dart';
import 'package:stacked/stacked.dart';

// View
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using the reactive constructor gives you the traditional ViewModel
    // binding which will execute the builder again when notifyListeners is called.
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
          await  viewModel.navigate();

          },
        ),
        body: Center(
          child: Text(viewModel.title),
        ),
      ),
    );
  }
}


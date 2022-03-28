// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/app.router.dart';
import 'package:portfolio/app/injection_config.dart';
import 'package:portfolio/presentation/home_page.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'default';
  
  final navServ = locator<NavigationService>();

  void initialise() {
    title = 'initialised';
    notifyListeners();
  }

  Future navigate() async{
    await navServ.navigateTo(Routes.addUserPage);
    
  }
  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    notifyListeners();
  }
}
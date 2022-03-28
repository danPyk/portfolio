import 'package:portfolio/presentation/add_user/add_user_page.dart';
import 'package:portfolio/presentation/home_page.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: AddUserPage)
])class App {
  /** This class has no puporse besides housing the
   * annotation that generates the required functionality **/
}

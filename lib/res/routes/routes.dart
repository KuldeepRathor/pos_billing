import 'package:get/get.dart';
import 'package:pos_billing/res/routes/routes_name.dart';
import 'package:pos_billing/view/home/home_page.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.homePage,
          page: () => const HomePage(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}

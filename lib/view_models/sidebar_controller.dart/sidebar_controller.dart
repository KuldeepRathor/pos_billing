import 'package:get/get.dart';

class SidebarController extends GetxController {
  RxBool isExpanded = false.obs;
  RxInt selectedPage = 0.obs;
  RxMap<int, bool> subMenuExpanded = <int, bool>{}.obs;

  void toggleSidebar() {
    isExpanded.value = !isExpanded.value;
  }

  void toggleSidebarOnHover() {
    isExpanded.value = !isExpanded.value;
  }

  void selectPage(int pageIndex) {
    selectedPage.value = pageIndex;
    subMenuExpanded[pageIndex] = !(subMenuExpanded[pageIndex] ?? false);
  }
}

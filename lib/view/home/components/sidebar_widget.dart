// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg_flutter.dart';

import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/view_models/sidebar_controller.dart/sidebar_controller.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SidebarController controller = Get.put(SidebarController());

    return Obx(() {
      return MouseRegion(
        onEnter: (_) => controller.toggleSidebarOnHover(),
        onExit: (_) => controller.toggleSidebarOnHover(),
        child: InkWell(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: controller.isExpanded.value ? 180 : 74,
            color: primaryColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 62,
                    width: double.infinity,
                    color: secondaryColor,
                    child: Center(
                      child: CustomText(
                        text: controller.isExpanded.value ? "" : "",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/dashboard.svg",
                    onTap: () {
                      controller.selectPage(0);
                    },
                    label: controller.isExpanded.value ? "Dashboard" : "",
                    isSelected: controller.selectedPage.value == 0,
                    selectedImageURL: 'assets/svgs/dashboard_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/purchase.svg",
                    onTap: () {
                      controller.selectPage(1);
                    },
                    label: controller.isExpanded.value ? "Purchase" : "",
                    isSelected: controller.selectedPage.value == 1,
                    selectedImageURL: 'assets/svgs/purchase_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/inventory.svg",
                    onTap: () {
                      controller.selectPage(2);
                    },
                    label: controller.isExpanded.value ? "Inventory" : "",
                    isSelected: controller.selectedPage.value == 2,
                    selectedImageURL: 'assets/svgs/inventory_selected.svg',
                    subItems: const [
                      "Ornament Type",
                      "Stock head",
                      "Design",
                      "Stone Details",
                      "Size Details",
                    ],
                    controller: controller,
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/tagging.svg",
                    onTap: () {
                      controller.selectPage(3);
                    },
                    label: controller.isExpanded.value ? "Tagging" : "",
                    isSelected: controller.selectedPage.value == 3,
                    selectedImageURL: 'assets/svgs/tagging_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/estimate.svg",
                    onTap: () {
                      controller.selectPage(4);
                    },
                    label: controller.isExpanded.value ? "Estimation" : "",
                    isSelected: controller.selectedPage.value == 4,
                    selectedImageURL: 'assets/svgs/estimate_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/sales.svg",
                    onTap: () {
                      controller.selectPage(5);
                    },
                    label: controller.isExpanded.value ? "Sales" : "",
                    isSelected: controller.selectedPage.value == 5,
                    selectedImageURL: 'assets/svgs/sales_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/returns.svg",
                    onTap: () {
                      controller.selectPage(6);
                    },
                    label: controller.isExpanded.value ? "Returns" : "",
                    isSelected: controller.selectedPage.value == 6,
                    selectedImageURL: 'assets/svgs/returns_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/vendors.svg",
                    onTap: () {
                      controller.selectPage(7);
                    },
                    label: controller.isExpanded.value ? "Vendors" : "",
                    isSelected: controller.selectedPage.value == 7,
                    selectedImageURL: 'assets/svgs/vendors_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/customers.svg",
                    onTap: () {
                      controller.selectPage(8);
                    },
                    label: controller.isExpanded.value ? "Customers" : "",
                    isSelected: controller.selectedPage.value == 8,
                    selectedImageURL: 'assets/svgs/customers_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/delivery_note.svg",
                    onTap: () {
                      controller.selectPage(9);
                    },
                    label: controller.isExpanded.value ? "Delivery Note" : "",
                    isSelected: controller.selectedPage.value == 9,
                    selectedImageURL: 'assets/svgs/delivery_note_selected.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/material_in_out.svg",
                    onTap: () {
                      controller.selectPage(10);
                    },
                    label: controller.isExpanded.value ? "Material In/Out" : "",
                    isSelected: controller.selectedPage.value == 10,
                    selectedImageURL: 'assets/svgs/material_in_out.svg',
                  ),
                  SidebarIcon(
                    imageURL: "assets/svgs/settings.svg",
                    onTap: () {
                      controller.selectPage(11);
                    },
                    label: controller.isExpanded.value ? "Settings" : "",
                    isSelected: controller.selectedPage.value == 11,
                    selectedImageURL: 'assets/svgs/settings_selected.svg',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class SidebarIcon extends StatelessWidget {
  final String imageURL;
  final VoidCallback onTap;
  final String label;
  final bool isSelected;
  final String selectedImageURL;
  final List<String>? subItems;
  final SidebarController? controller;

  const SidebarIcon({
    super.key,
    required this.imageURL,
    required this.onTap,
    required this.label,
    required this.isSelected,
    required this.selectedImageURL,
    this.subItems,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: isSelected ? secondaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                    height: 38,
                    child: SvgPicture.asset(
                      isSelected ? selectedImageURL : imageURL,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  if (label.isNotEmpty) ...[
                    Flexible(
                      child: Text(
                        label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
          if (isSelected && subItems != null && controller != null) ...[
            for (var subItem in subItems!)
              InkWell(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 4, bottom: 4),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_right,
                          color: Colors.white, size: 16),
                      const SizedBox(width: 8),
                      Text(
                        subItem,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

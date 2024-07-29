import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/view/employees/employees_page.dart';
import 'package:pos_billing/view/estimate/estimate_page.dart';
import 'package:pos_billing/view/home/components/sidebar_widget.dart';
import 'package:pos_billing/view/purchse/purchase%20invoice/purchase_invoice.dart';
import 'package:pos_billing/view/purchse/purchase%20invoice/purchse_invoice_flow2.dart';
import 'package:pos_billing/view/purchse/purchase_page.dart';
import 'package:pos_billing/view/sales/sales_page.dart';
import 'package:pos_billing/view/web_store/web_store.dart';
import 'package:pos_billing/view_models/sidebar_controller.dart/sidebar_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SidebarController sidebarController = Get.put(SidebarController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main content
            Positioned.fill(
              left: 76,
              child: Obx(() {
                switch (sidebarController.selectedPage.value) {
                  case 0:
                    return const PurchasePage();
                  case 1:
                    return const PurchaseInvoice();
                  // return const TransactionsPage();
                  case 2:
                    return const PurchaseInvoiceFlow2();
                  case 3:
                    return const EstimatePage();
                  case 4:
                    return const SalesPage();
                  case 5:
                    return const WebStorePage();
                  case 6:
                    return const EmployeesPage();
                  default:
                    return const PurchasePage();
                }
              }),
            ),
            // Sidebar
            const Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: SideBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

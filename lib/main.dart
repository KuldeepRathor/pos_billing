import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/getx_loclization/languages.dart';
import 'package:pos_billing/utils/intents.dart';
import 'package:pos_billing/view/home/home_page.dart';

import 'view/home/components/dialog box/add_customer_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'POS Billing',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const HomePage(),
      builder: (context, child) {
        return Actions(
          actions: <Type, Action<Intent>>{
            EditPageIntent: CallbackAction<EditPageIntent>(
              onInvoke: (intent) => _openEditPage(),
            ),
            NextScreenIntent: CallbackAction<NextScreenIntent>(
              onInvoke: (intent) => _openNextScreen(),
            ),
            VendorButtonIntent: CallbackAction<VendorButtonIntent>(
              onInvoke: (intent) => _clickVendorButton(),
            ),
            CustomerButtonIntent: CallbackAction<CustomerButtonIntent>(
              onInvoke: (intent) => _clickCustomerButton(),
            ),
            AddRowIntent: CallbackAction<AddRowIntent>(
              onInvoke: (intent) => _addNewRow(),
            ),
            RemoveRowIntent: CallbackAction<RemoveRowIntent>(
              onInvoke: (intent) => _removeRow(),
            ),
          },
          child: Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(
                      LogicalKeyboardKey.control, LogicalKeyboardKey.keyE):
                  const EditPageIntent(),
              LogicalKeySet(
                      LogicalKeyboardKey.control, LogicalKeyboardKey.keyS):
                  const NextScreenIntent(),
              LogicalKeySet(LogicalKeyboardKey.keyV):
                  const VendorButtonIntent(),
              LogicalKeySet(LogicalKeyboardKey.keyC):
                  const CustomerButtonIntent(),
              LogicalKeySet(LogicalKeyboardKey.enter): const AddRowIntent(),
              LogicalKeySet(LogicalKeyboardKey.escape): const RemoveRowIntent(),
            },
            child: Focus(
              autofocus: true,
              child: child!,
            ),
          ),
        );
      },
    );
  }

  void _openEditPage() {
    debugPrint('Edit Page Opened');
    Get.to(() => const AddCustomerDialog());
  }

  void _openNextScreen() {
    debugPrint('Next Screen Opened');
  }

  void _clickVendorButton() {
    debugPrint('Vendor Button Clicked');
  }

  void _clickCustomerButton() {
    debugPrint('Customer Button Clicked');
    // Implement the customer button click action
  }

  void _addNewRow() {
    debugPrint('New Row Added');
    // Implement the action to add a new row
  }

  void _removeRow() {
    debugPrint('Row Removed');
    // Implement the action to remove a row
  }
}

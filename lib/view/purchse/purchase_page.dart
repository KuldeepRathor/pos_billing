import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/widgets/custom_calendar.dart';
import 'package:pos_billing/view/purchse/bill_details_widget.dart';
import 'package:pos_billing/view/purchse/header_widget.dart';
import 'package:pos_billing/view/purchse/item_details_widget.dart';
import 'package:pos_billing/view/purchse/party_details_widget.dart';
import 'package:pos_billing/view/purchse/total_price_widget.dart';

class PurchasePage extends StatefulWidget {
  const PurchasePage({
    super.key,
  });

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  final TextEditingController invoiceDateController = TextEditingController();
  final TextEditingController entryDateController = TextEditingController();

  bool showInvoiceCalendar = false;
  bool showEntryCalendar = false;

  void _selectDate(TextEditingController controller) {
    setState(() {
      if (controller == invoiceDateController) {
        showInvoiceCalendar = !showInvoiceCalendar;
        showEntryCalendar = false;
      } else {
        showEntryCalendar = !showEntryCalendar;
        showInvoiceCalendar = false;
      }
    });
  }

  void _onDateSelected(TextEditingController controller, DateTime date) {
    setState(() {
      controller.text = "${date.day}/${date.month}/${date.year}";
      showInvoiceCalendar = false;
      showEntryCalendar = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey1,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                header: 'Purchase',
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              flex: 2,
                              child: PartyDetailsWidget(),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              flex: 1,
                              child: BillDetailsWidget(
                                invoiceDateController: invoiceDateController,
                                entryDateController: entryDateController,
                                onDateFieldTap: _selectDate,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const ItemDetailsWidget(),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (showInvoiceCalendar)
            Positioned(
              right: 16,
              top: 225,
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 375,
                  maxWidth: 325,
                ),
                child: CustomCalendar(
                  onDateSelected: (date) =>
                      _onDateSelected(invoiceDateController, date),
                ),
              ),
            ),
          if (showEntryCalendar)
            Positioned(
              right: 16,
              top: 300,
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 375,
                  maxWidth: 325,
                ),
                child: CustomCalendar(
                  onDateSelected: (date) =>
                      _onDateSelected(entryDateController, date),
                ),
              ),
            ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: TotalPriceWidget(),
          ),
        ],
      ),
    );
  }
}

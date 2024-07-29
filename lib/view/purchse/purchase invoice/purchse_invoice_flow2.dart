import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/widgets/custom_calendar.dart';
import 'package:pos_billing/view/purchse/bill_details_widget.dart';
import 'package:pos_billing/view/purchse/header_widget.dart';
import 'package:pos_billing/view/purchse/party_details_widget.dart';
import '../../../utils/widgets/custom_button2.dart';

class PurchaseInvoiceFlow2 extends StatefulWidget {
  const PurchaseInvoiceFlow2({super.key});

  @override
  State<PurchaseInvoiceFlow2> createState() => _PurchaseInvoiceFlow2State();
}

class _PurchaseInvoiceFlow2State extends State<PurchaseInvoiceFlow2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
            header: 'Purchase Invoice',
          ),
          Container(
            color: grey1,
            height: 1,
            width: double.infinity,
          ),
          Container(
            height: 80,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 46,
                    height: 46,
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: secondaryColor,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton3(
                        onPressed: () {},
                        buttonName: 'Upload',
                        image: 'assets/svgs/upload.svg',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomButton3(
                        onPressed: () {},
                        buttonName: 'View Ledger',
                        image: 'assets/svgs/ledger.svg',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomButton3(
                        onPressed: () {},
                        buttonName: 'Cancel',
                        image: 'assets/svgs/cancel.svg',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomButton3(
                        onPressed: () {},
                        buttonName: 'Edit ',
                        image: 'assets/svgs/edit.svg',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomButton3(
                        onPressed: () {},
                        buttonName: 'Print',
                        image: 'assets/svgs/print.svg',
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              tabAlignment: TabAlignment.start,
              unselectedLabelColor: Colors.grey,
              indicatorColor: primaryColor,
              controller: _tabController,
              tabs: const [
                Tab(
                  child: Text(
                    "Invoice Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Payment Summary",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "View Estimate",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            // width: Get.width * 0.3,
            child: TabBarView(
              controller: _tabController,
              children: [
                const InvoiceDetails(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * 0.6,
                        width: Get.width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sub Total',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Nett',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'CGST',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'SGST',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '₹ 24,00,000.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '₹ 24,00,000.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '₹ 24,00,000.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '₹ 24,00,000.00',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                const Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
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
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // const ItemDetailsWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (showInvoiceCalendar)
              Positioned(
                right: 16,
                top: 225, // Adjust as needed
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
                top: 300, // Adjust as needed
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
          ],
        ),
      ),
    );
  }
}

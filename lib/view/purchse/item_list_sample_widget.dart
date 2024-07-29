import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';

class ItemListSampleWidget extends StatelessWidget {
  const ItemListSampleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              width: double.infinity,
              height: 38,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextExpanded(
                    flex: 1,
                    text: "Sn",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    flex: 2,
                    text: "Code",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    flex: 8,
                    text: "Description",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    flex: 1,
                    text: "Pcs",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    text: "Gross Wt (gm)",
                    fontSize: 16,
                    color: Colors.white,
                    flex: 3,
                  ),
                  CustomTextExpanded(
                    flex: 3,
                    text: "Nett Wt (gm)",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    text: "VA/Pure%",
                    flex: 2,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    text: "MC",
                    flex: 3,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomTextExpanded(
                    text: "Stone",
                    fontSize: 16,
                    color: Colors.white,
                    flex: 3,
                  ),
                  CustomTextExpanded(
                    text: "Total",
                    flex: 3,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(width: 1),
                  ),
                ],
              ),
            ),
          ),
          ItemListContentWidget(),
          ItemListContentWidget(),
          ItemListContentWidget(),
          ItemListContentWidget(),
          ItemListContentWidget(),
          ItemListContentWidget(),
        ],
      ),
    );
  }
}

class ItemListContentWidget extends StatelessWidget {
  const ItemListContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTextExpanded(
            flex: 1,
            text: "1",
            fontSize: 16,
            color: Colors.black,
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              // color: Colors.red,
              padding: EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                      hintStyle: TextStyle()),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 1,
              // color: Colors.red,
              // child: const Center(
              //   child: TextField(
              //     decoration: InputDecoration(
              //         border: InputBorder.none,
              //         hintText: '--',
              //         hintStyle: TextStyle()),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

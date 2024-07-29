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
                  CustomText(
                    text: "Sn",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Code",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Description",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  CustomText(
                    text: "Pcs",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Gross Wt (gm)",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Nett Wt (gm)",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "VA/Pure%",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "MC",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Stone",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  CustomText(
                    text: "Total",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8)
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "1",
                  fontSize: 16,
                  color: Colors.black,
                ),
                Container.new(
                  width: 60,
                  // color: Colors.red,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '--',
                          hintStyle: TextStyle()),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '--',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '₹ --',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '₹ --',
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '₹ --',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Stock Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/accessories.svg",
            title: "Accessories",
            amountOfFiles: "\$55500.30",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/food.svg",
            title: "Food",
            amountOfFiles: "\$4200",
            numOfFiles: 814,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/medicines.svg",
            title: "Medications",
            amountOfFiles: "\$3288.59",
            numOfFiles: 974,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Others",
            amountOfFiles: "\$5644",
            numOfFiles: 2140,
          ),
        ],
      ),
    );
  }
}

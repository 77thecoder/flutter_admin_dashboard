import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Products",
    numOfFiles: 1328,
    svgSrc: "assets/icons/product.svg",
    totalStorage: "\$120",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "New Users",
    numOfFiles: 128,
    svgSrc: "assets/icons/person.svg",
    totalStorage: "\$116",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "New Orders",
    numOfFiles: 216,
    svgSrc: "assets/icons/order.svg",
    totalStorage: "\$3567",
    color: Color(0xFFA4CDFF),
    percentage: 66,
  ),
  CloudStorageInfo(
    title: "Earning",
    numOfFiles: 132,
    svgSrc: "assets/icons/earning.svg",
    totalStorage: "\$568.22",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];

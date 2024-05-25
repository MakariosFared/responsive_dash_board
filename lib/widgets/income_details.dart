import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const item = [
    ItemDetailsModel(
      color: Color(0xff208BC7),
      title: 'Design service',
      value: '%40',
    ),
    ItemDetailsModel(
      color: Color(0xff4DB7F2),
      title: 'Design Product',
      value: '%25',
    ),
    ItemDetailsModel(
      color: Color(0xff064060),
      title: 'Product royalty',
      value: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '%22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true ,
      itemBuilder: (BuildContext context, int index) {
        return ItemDetails(itemDetailsModel: item[index]);
      },
    );
  }
}

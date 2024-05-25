import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash withdrawal',
      date: '13 April, 2022',
      amount: r'$20.127',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing page project',
      date: '13 April, 2022',
      amount: r'$20.127',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App Project',
      date: '13 April, 2022',
      amount: r'$20.127',
      isWithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: items[index],
        );
      },
    );
  }
}

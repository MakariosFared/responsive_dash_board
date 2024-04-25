import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final item = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$ 20.129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$ 20.129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$ 20.129",
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: item
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
      children: item.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    itemModel: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
                child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ));
          }
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

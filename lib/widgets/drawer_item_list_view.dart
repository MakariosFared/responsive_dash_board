import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
  });

  static const List<DrawerItemModel> item = [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransctions),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
    // DrawerItemModel(title: "Setting system", image: Assets.imagesSettings),
    // DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: item.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: DrawerItem(
            drawerItemModel: item[index],
          ),
        );
      },
    );
  }
}
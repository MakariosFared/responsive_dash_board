import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> item = [
    const DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transaction", image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: "Wallet Account", image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: "My Investments", image: Assets.imagesMyInvestments),
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
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: DrawerItem(
              drawerItemModel: item[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}

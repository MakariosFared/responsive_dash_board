import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveDrawerItem(drawerItemModel: drawerItemModel),
      secondChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}



// isActive
//         ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
//         : InActiveDrawerItem(drawerItemModel: drawerItemModel);
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Expanded(child: SizedBox()),
        const Icon(Icons.arrow_forward_ios_rounded),
      ],
    );
  }
}
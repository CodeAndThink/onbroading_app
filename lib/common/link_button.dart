import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onbroading_app/static_values/values.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.iconUrl});
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 60,
      decoration: BoxDecoration(
          color: Values.baseLinkButtonColor,
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(onPressed: () {}, icon: SvgPicture.asset(iconUrl)),
    );
  }
}

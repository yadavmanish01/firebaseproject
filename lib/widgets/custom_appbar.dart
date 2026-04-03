import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/customapptheme.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final void Function()? onTap;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomFullWaveClipper(),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: Get.height * 0.16,
        elevation: 5,
        backgroundColor: CustomAppTheme.primaryBlue,
        shadowColor: Colors.grey.withOpacity(0.4),
        titleSpacing: 0,
        leading: leading,
        actions: actions,
        title: Transform.translate(
          offset: const Offset(0, -30),
          child: Text(
            title ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.15);
}


/// Custom clipper for single smooth wave bottom
class BottomFullWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start top-left
    path.lineTo(0, 7);

    // Left side down to start wave
    path.lineTo(0, size.height - 70);

    // Single wave across bottom
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width / 1, size.height - 70);
    // path.quadraticBezierTo(
    //      size.width / 2, size.height - 80, size.width, size.height - 40);

    // Right side up to top-right
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

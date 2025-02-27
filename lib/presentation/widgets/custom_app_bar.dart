import 'package:flutter/material.dart';
import '../../core/utils/app_assets.dart'; // Path aset

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onMenuPressed;
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.onMenuPressed, // 🔹 Menerima aksi dari tombol menu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu), // 🔹 Tambahkan tombol menu di kiri
        onPressed: onMenuPressed, // 🔹 Panggil callback saat tombol ditekan
      ),
      title: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // pemisah logo & title
        children: [
          Text(title, style: TextStyle(fontSize: 18)), // Title di kanan
          Image.asset(
            AppAssets.logo, // Logo di sebelah kiri
            height: 40,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

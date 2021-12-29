import 'package:flutter/material.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          const ProfileMenu(
            text: 'Tài khoản của tôi',
            icon: 'assets/icons/User Icon.svg',
            // press: () => {},
          ),
          ProfileMenu(
            text: 'Thông báo',
            icon: 'assets/icons/Bell.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Cài đặt',
            icon: 'assets/icons/Settings.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Hỗ trợ',
            icon: 'assets/icons/Question mark.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Đăng xuất',
            icon: 'assets/icons/Log out.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerce_app_builtin_dev/Module/Settings/Components/settings_components.dart';
import 'package:ecommerce_app_builtin_dev/Module/Settings/View%20Model/settings_view_model.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Text/app_text.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/AppColors.dart';
import 'package:ecommerce_app_builtin_dev/Utills/App%20Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Bar/my_app_bar.dart';

class SettingsView extends StatelessWidget {
  SettingsView({Key? key}) : super(key: key);
  // final _controller = Get.put(SettingsViewModel());
  final _notificationSwitch = ValueNotifier<bool>(false);
  final _updateSwitch = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    me(_updateSwitch);
    return Scaffold(
      appBar: MyAppBar().appBar(
        isCentrTitle: true,
        isPrefixIcon: false,
        isTitleWithIcon: false,
        prefixIconData: Icons.arrow_back_ios,
        title: "Settings",
        fontSize: 22,
        fontweight: FontWeight.bold,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.
          children: [
            SettingsComponents().simpleTile(
              imagePath: "assets/logo/email_logo.png",
              tittle: "Email Support",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            SettingsComponents().simpleTile(
              imagePath: "assets/logo/email_logo.png",
              tittle: "FAQ",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            SettingsComponents().simpleTile(
              imagePath: "assets/logo/password_logo.png",
              tittle: "Privacy Statement",
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            SettingsComponents().buttonTile(
              imagePath: "assets/logo/email_logo.png",
              tittle: "Notification",
              cont: _notificationSwitch,
            ),
            const SizedBox(
              height: 20,
            ),
            SettingsComponents().buttonTile(
              imagePath: "assets/logo/email_logo.png",
              tittle: "Update",
              cont: _updateSwitch,
            )
          ],
        ),
      ),
    );
  }

  void me(ValueNotifier<bool> updateSwitch) {}
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tranki_tv/extensions/extensions.dart';
import 'package:tranki_tv/features/settings/pages/more.dart';

import '../../constants/app_colors.dart';
import 'controller/setting_controller.dart';
import 'pages/account_settings.dart';
import 'pages/language.dart';
import 'pages/notifications.dart';

class SettingsView extends GetView<SettingController> {
  static const String routeName = "/setting";
  const SettingsView({super.key});
  // var controller = Get.put(SettingController());

  // SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SettingController>(
            init: SettingController(),
            builder: (_) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonAppBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              controller.pageNo.value == 0
                                  ? activeContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(0);
                                      },
                                      context: context,
                                      title: 'Account Setting',
                                    )
                                  : inActiveContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(0);
                                      },
                                      context: context,
                                      title: 'Account Setting',
                                    ),
                              controller.pageNo.value == 1
                                  ? activeContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(1);
                                      },
                                      context: context,
                                      title: 'Notification',
                                    )
                                  : inActiveContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(1);
                                      },
                                      context: context,
                                      title: 'Notification',
                                    ),
                              controller.pageNo.value == 2
                                  ? activeContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(2);
                                      },
                                      context: context,
                                      title: 'Language',
                                    )
                                  : inActiveContainer(
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(2);
                                      },
                                      context: context,
                                      title: 'Language',
                                    ),
                              controller.pageNo.value == 3
                                  ? activeContainer(
                                      title: 'More',
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(3);
                                      },
                                      context: context,
                                    )
                                  : inActiveContainer(
                                      title: 'More',
                                      image: '',
                                      onTap: () {
                                        controller.pageController2
                                            .jumpToPage(3);
                                      },
                                      context: context,
                                    ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  color: AppColors.kPrimary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 15,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: const Text(
                                  'Log Out',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                            ],
                          ).expanded(),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: double.infinity,
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0x19CE1F4E)),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x07000000),
                                    blurRadius: 15,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: PageView(
                                padEnds: true,
                                pageSnapping: true,
                                physics: const NeverScrollableScrollPhysics(),
                                onPageChanged: (index) {
                                  controller.pageNo.value = index;
                                },
                                controller: controller.pageController2,
                                children: const [
                                  AccountSetting(),
                                  Notifications(),
                                  Language(),
                                  More()
                                ],
                              )).expanded(),
                        ],
                      ).expanded()
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget activeContainer({
    String? title,
    String? image,
    BuildContext? context,
    dynamic onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(top: 10),
        duration: const Duration(seconds: 1),
        curve: Curves.fastEaseInToSlowEaseOut,
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kPrimary,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? 'My Profile',
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const Icon(
              Icons.keyboard_double_arrow_up,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget inActiveContainer({
    String? title,
    String? image,
    BuildContext? context,
    dynamic onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        height: 50,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        duration: const Duration(seconds: 1),
        curve: Curves.fastEaseInToSlowEaseOut,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x07000000),
              blurRadius: 15,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? 'My Profile',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Icon(
              Icons.keyboard_double_arrow_down,
            )
          ],
        ),
      ),
    );
  }
}

class CommonAppBar extends StatelessWidget {
  final String? title;
  const CommonAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [Image.asset('assets/images/logo.png')],
          ).expanded(),
          Text(
            title ?? 'Settings',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              
              fontWeight: FontWeight.bold,
            ),
          ).expanded(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              iconWidget('assets/images/mdi_record-rec.svg'),
              iconWidget('assets/images/download.svg'),
              iconWidget('assets/images/uil_setting.svg'),
              iconWidget('assets/images/arcticons_multivnc.svg'),
              iconWidget('assets/images/carbon_notification.svg'),
              iconWidget('assets/images/profile.svg'),
            ],
          ).expanded()
        ],
      ),
    );
  }

  Padding iconWidget(String data) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SvgPicture.asset(data),
    );
  }
}

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/data/controller/auth_controller.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import 'package:flutter_pertama/app/utils/widget/header.dart';
import 'package:flutter_pertama/app/utils/widget/myTask.dart';
import 'package:flutter_pertama/app/utils/widget/peopleYouMayKnow.dart';
import 'package:flutter_pertama/app/utils/widget/sidebar.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/app/utils/widget/Upcomingtask.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

import 'package:flutter_pertama/app/utils/widget/myfriends.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: Sidebar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: Sidebar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(Icons.menu,
                                    color: AppColors.primaryText),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text(
                                    'Manage task made easy',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(AntIcons.notificationFilled,
                                  color: AppColors.primaryText, size: 30),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      authCon.auth.currentUser!.photoURL!),
                                ),
                              ),
                            ],
                          ),
                        ),
                  //content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // height: Get.height * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'People You May Know',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 30,
                                  ),
                                ),

                                //My Task
                                PeopleYouMayKnow(),
                              ],
                            ),
                          ),
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      myTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                )
                              : myTask(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

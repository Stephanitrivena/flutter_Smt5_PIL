import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:get/get.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 30),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                  image: AssetImage('assets/icons/icon.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/home'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white)
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/home'
                                ? Icons.desktop_windows
                                : Icons.desktop_windows_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/task'
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white)
                            : const BoxDecoration(),
                        child: Icon(
                          Get.currentRoute == '/task'
                              ? AntIcons.codeSandboxSquareFilled
                              : AntIcons.codeSandboxOutlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Task',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/friends'
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white)
                            : const BoxDecoration(),
                        child: Icon(
                          Get.currentRoute == '/friends'
                              ? AntIcons.heartFilled
                              : AntIcons.heartOutlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Friends',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                    child: InkWell(
                  child: Column(children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: Get.currentRoute == '/profile'
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white)
                          : const BoxDecoration(),
                      child: Icon(
                        Get.currentRoute == '/profile'
                            ? Icons.person
                            : Icons.person_outline,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                  onTap: () => Get.toNamed(Routes.PROFILE),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

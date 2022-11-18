import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Task Management',
                style: TextStyle(fontSize: 25, color: AppColors.primaryText),
              ),
              Text(
                'Manage task make easy with friends',
                style: TextStyle(fontSize: 15, color: AppColors.primaryText),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 40, right: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(AntIcons.bellFilled, color: AppColors.primaryText, size: 30),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.defaultDialog(
                title: 'Sign Out',
                content: const Text('Are you sure want to sign out'),
                cancel: ElevatedButton(
                    onPressed: () => Get.back(), child: Text('Cancel')),
                confirm: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                  child: Text('Sign Out'),
                ),
              );
            },
            child: Row(
              children: const [
                Text(
                  'Sign Out',
                  style: TextStyle(color: AppColors.primaryText, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  AntIcons.logoutOutlined,
                  color: AppColors.primaryText,
                  size: 30,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

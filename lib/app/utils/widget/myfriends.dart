import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/data/controller/auth_controller.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import '../style/AppColors.dart';

class MyFriends extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'My Friends',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FRIENDS),
                  child: const Text(
                    'More',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: AppColors.primaryText,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: authCon.streamFriends(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                var myFriends = (snapshot.data!.data()
                    as Map<String, dynamic>)['emailFriends'] as List;

                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: myFriends.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return StreamBuilder<
                            DocumentSnapshot<Map<String, dynamic>>>(
                        stream: authCon.streamUsers(myFriends[index]),
                        builder: (context, snapshot2) {
                          if (snapshot2.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }

                          var data = snapshot2.data!.data();

                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(data!['photo']),
                                  height: 190,
                                  width: 220,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                data['name'],
                                style: const TextStyle(
                                    color: AppColors.primaryText),
                              ),
                            ],
                          );
                        });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

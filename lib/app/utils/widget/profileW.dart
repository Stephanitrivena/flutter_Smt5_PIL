import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/data/controller/auth_controller.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  final AuthConn = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                        AuthConn.auth.currentUser!.photoURL!,
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 20,),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AuthConn.auth.currentUser!.displayName!,
                        style: const TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        AuthConn.auth.currentUser!.email!,
                        style: const TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage: NetworkImage(
                        AuthConn.auth.currentUser!.photoURL!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AuthConn.auth.currentUser!.displayName!,
                          style: const TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          AuthConn.auth.currentUser!.email!,
                          style: const TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
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

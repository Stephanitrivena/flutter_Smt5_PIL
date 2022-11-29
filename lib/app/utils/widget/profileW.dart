import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                        'https://www.dreamers.id/img_artikel/93d.o-military-photo.jpg',
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
                        'Park Kyungsoo',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'kyungsoo@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 15,
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
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage: NetworkImage(
                        'https://www.dreamers.id/img_artikel/93d.o-military-photo.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Park Kyungsoo',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'kyungsoo@gmail.com',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 15,
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

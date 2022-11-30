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
                const Expanded(
                  flex: 1,
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
                    children: const [
                      Text(
                        'Park Kyungsoo',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'kyungsoo@gmail.com',
                        style: TextStyle(
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
                  SizedBox(
                    height: 10,
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
                    height: 10,
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
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          '              kyungsoo@gmail.com',
                          style: TextStyle(
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

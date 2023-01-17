import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

import '../../data/controller/auth_controller.dart';

addEditTask({BuildContext? context, String? type, String? docId}) {
  final authCon = Get.find<AuthController>();

  Get.bottomSheet(
    SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        margin: context!.isPhone
            ? EdgeInsets.zero
            : const EdgeInsets.only(left: 150, right: 150),
        // height: Get.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Form(
          key: authCon.formKey,
          child: Column(
            children: [
              Text(
                '$type Task',
                style: const TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Tittle',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Can not be empty";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Can not be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DateTimePicker(
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
                dateLabelText: 'Due Date',
                decoration: InputDecoration(
                  hintText: 'Due Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.dueDateController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Can not be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: Get.width, height: 40),
                child: ElevatedButton(
                  onPressed: () {
                    authCon.saveUpdateTask(
                      authCon.titleController.text,
                      authCon.descriptionController.text,
                      authCon.dueDateController.text,
                      docId.toString(),
                      type.toString(),
                    );
                  },
                  child: Text(type!),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

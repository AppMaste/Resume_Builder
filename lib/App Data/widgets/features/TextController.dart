import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextControllerr textController = Get.put(TextControllerr());

class TextControllerr extends GetxController {
  var profileImage;


  // Add Work Experience Details
  var workShowButton = false.obs;

  // Add Education Details
  var educationShowButton = false.obs;

  // Add Project Details
  var projectShowButton = false.obs;

  // Add Achivement Details
  var months = "".obs;

  // Personal Infomation
  var nameController = TextEditingController().obs;
  var professionController = TextEditingController().obs;
  var emailController = TextEditingController().obs;
  var nationalityController = TextEditingController().obs;
  var phoneController = TextEditingController().obs;
  var addressController = TextEditingController().obs;


  // Reference
  var referenceName = TextEditingController().obs;
  var referenceAddress = TextEditingController().obs;
  var referenceNumber = TextEditingController().obs;
  var referenceEmail = TextEditingController().obs;

  // Achivmevement Details
  var awardTitleController = TextEditingController().obs;
  var issuerController = TextEditingController().obs;
  var yearController = TextEditingController().obs;
  var additionalController = TextEditingController().obs;

  // Education Details
  var schoolNameController = TextEditingController().obs;
  var degreeController = TextEditingController().obs;
  var startDateController = TextEditingController().obs;
  var endDateController = TextEditingController().obs;
  var educationAdditionalController = TextEditingController().obs;

  // Known Language
  var languageController = TextEditingController().obs;

  // Add Project Details
  var projectTitleController = TextEditingController().obs;
  var roalController = TextEditingController().obs;
  var projectstartDateController = TextEditingController().obs;
  var projectendDateController = TextEditingController().obs;
  var projectCompanyController = TextEditingController().obs;
  var projectAdditionalController = TextEditingController().obs;


   // Add Skills
  var skillsNameController = TextEditingController().obs;

  // Work Experience
  var workCompanyController = TextEditingController().obs;
  var positionController = TextEditingController().obs;
  var workstartDateController = TextEditingController().obs;
  var workendDateController = TextEditingController().obs;
  var descriptionController = TextEditingController().obs;

  // Objective
  var objectiveController = TextEditingController().obs;
}

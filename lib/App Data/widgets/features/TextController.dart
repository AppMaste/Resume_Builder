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
  var phoneController2 = TextEditingController().obs;
  var addressController = TextEditingController().obs;
  var webSiteController = TextEditingController().obs;

  // Reference
  var referenceName = TextEditingController().obs;
  var referenceAddress = TextEditingController().obs;
  var referenceNumber = TextEditingController().obs;
  var referenceEmail = TextEditingController().obs;

  var referenceName2 = TextEditingController().obs;
  var referenceAddress2 = TextEditingController().obs;
  var referenceNumber2 = TextEditingController().obs;
  var referenceEmail2 = TextEditingController().obs;

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
  var presentController = TextEditingController(text: "Present").obs;

  var schoolNameController2 = TextEditingController().obs;
  var degreeController2 = TextEditingController().obs;
  var startDateController2 = TextEditingController().obs;
  var endDateController2 = TextEditingController().obs;
  var educationAdditionalController2 = TextEditingController().obs;


  var resume4SchoolName1 = TextEditingController().obs;
  var resume4SchoolName2 = TextEditingController().obs;
  var resume4SchoolName3 = TextEditingController().obs;
  var resume4SchoolName4 = TextEditingController().obs;

  var resume4DegreeName1 = TextEditingController().obs;
  var resume4DegreeName2 = TextEditingController().obs;
  var resume4DegreeName3 = TextEditingController().obs;
  var resume4DegreeName4 = TextEditingController().obs;

  var resume4StartDate1 = TextEditingController().obs;
  var resume4StartDate2 = TextEditingController().obs;
  var resume4StartDate3 = TextEditingController().obs;
  var resume4StartDate4 = TextEditingController().obs;

  var resume4Additional1 = TextEditingController().obs;
  var resume4Additional2 = TextEditingController().obs;
  var resume4Additional3 = TextEditingController().obs;
  var resume4Additional4 = TextEditingController().obs;

  var resume4Present1 = TextEditingController(text: "Present").obs;
  var resume4Present2 = TextEditingController(text: "Present").obs;
  var resume4Present3 = TextEditingController(text: "Present").obs;
  var resume4Present4 = TextEditingController(text: "Present").obs;

  var resume4ExDate1 = TextEditingController().obs;
  var resume4ExDate2 = TextEditingController().obs;
  var resume4ExDate3 = TextEditingController().obs;
  var resume4ExDate4 = TextEditingController().obs;

  var resume4ExName1 = TextEditingController().obs;
  var resume4ExName2 = TextEditingController().obs;
  var resume4ExName3 = TextEditingController().obs;
  var resume4ExName4 = TextEditingController().obs;

  var resume4ExPosition1 = TextEditingController().obs;
  var resume4ExPosition2 = TextEditingController().obs;
  var resume4ExPosition3 = TextEditingController().obs;
  var resume4ExPosition4 = TextEditingController().obs;

  var resume4ExDescription1 = TextEditingController().obs;
  var resume4ExDescription2 = TextEditingController().obs;
  var resume4ExDescription3 = TextEditingController().obs;
  var resume4ExDescription4 = TextEditingController().obs;

  var resume4ExPresent1 = TextEditingController(text: "Present").obs;
  var resume4ExPresent2 = TextEditingController(text: "Present").obs;
  var resume4ExPresent3 = TextEditingController(text: "Present").obs;
  var resume4ExPresent4 = TextEditingController(text: "Present").obs;

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
  var skillsNameController1 = TextEditingController().obs;
  var skillsNameController2 = TextEditingController().obs;
  var skillsNameController3 = TextEditingController().obs;

  // Work Experience
  var workCompanyController = TextEditingController().obs;
  var positionController = TextEditingController().obs;
  var workstartDateController = TextEditingController().obs;
  var workendDateController = TextEditingController().obs;
  var descriptionController = TextEditingController().obs;

  var workPresentController1 = TextEditingController().obs;
  var workPresentController2 = TextEditingController().obs;
  var workPresentController3 = TextEditingController().obs;

  var workCompanyController2 = TextEditingController().obs;
  var positionController2 = TextEditingController().obs;
  var workstartDateController2 = TextEditingController().obs;
  var workendDateController2 = TextEditingController().obs;
  var descriptionController2 = TextEditingController().obs;

  var workCompanyController3 = TextEditingController().obs;
  var positionController3 = TextEditingController().obs;
  var workstartDateController3 = TextEditingController().obs;
  var workendDateController3 = TextEditingController().obs;
  var descriptionController3 = TextEditingController().obs;

  // Objective
  var objectiveController = TextEditingController().obs;

  // Resume 1 TextEditingController
  var jobExperience1 = TextEditingController().obs;
  var jobExperience2 = TextEditingController().obs;
  var jobExperience3 = TextEditingController().obs;
  var jobExperience4 = TextEditingController().obs;

  var jobExperience11 = TextEditingController().obs;
  var jobExperience12 = TextEditingController().obs;
  var jobExperience13 = TextEditingController().obs;
  var jobExperience14 = TextEditingController().obs;

  var jobExperience21 = TextEditingController().obs;
  var jobExperience22 = TextEditingController().obs;
  var jobExperience23 = TextEditingController().obs;
  var jobExperience24 = TextEditingController().obs;
}

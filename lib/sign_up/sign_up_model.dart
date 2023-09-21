import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mail widget.
  TextEditingController? mailController;
  String? Function(BuildContext, String?)? mailControllerValidator;
  String? _mailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Mail';
    }

    if (val.length < 6) {
      return 'mail must be between 6 and 30 characters long';
    }
    if (val.length > 30) {
      return 'mail must be between 6 and 30 characters long';
    }
    if (!RegExp(
            '^[a-z]+[a-z0-9.]*@(gmail|outlook|icloud|yahoo|hotmail)\\.com\$')
        .hasMatch(val)) {
      return 'only letters (a-z), number (0-9), and periods (.)\n are allowed.';
    }
    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Password';
    }

    if (val.length < 8) {
      return 'Must be contain 8 character 1 UpperCase, 1 Special \nCharacter (!@#\$&*), \n1 Digit, 1 Lowercase';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[!@#\\\$&*])(?=.*[0-9])(?=.*[a-z]).{8,}\$')
        .hasMatch(val)) {
      return 'Must be contain 8 character 1 UpperCase, 1 Special \nCharacter (!@#\$&*), \n1 Digit, 1 Lowercase';
    }
    return null;
  }

  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Phone';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for firstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Firstname';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for lastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Lastname';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for permissoin_choice widget.
  FormFieldController<String>? permissoinChoiceValueController;
  // Stores action output result for [Backend Call - API (signup)] action in Button widget.
  ApiCallResponse? apiResultul4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mailControllerValidator = _mailControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
  }

  void dispose() {
    mailController?.dispose();
    passwordController?.dispose();
    phoneController?.dispose();
    firstNameController?.dispose();
    lastNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get permissoinChoiceValue => permissoinChoiceValueController?.value;
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mail widget.
  TextEditingController? mailController;
  String? Function(BuildContext, String?)? mailControllerValidator;
  String? _mailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter email';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter password';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mailControllerValidator = _mailControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    mailController?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

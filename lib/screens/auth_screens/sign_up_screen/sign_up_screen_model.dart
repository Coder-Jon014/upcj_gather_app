import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/google_sign_in_button/google_sign_in_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordConfirm widget.
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  // Model for GoogleSignInButton component.
  late GoogleSignInButtonModel googleSignInButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
    googleSignInButtonModel =
        createModel(context, () => GoogleSignInButtonModel());
  }

  void dispose() {
    firstNameController?.dispose();
    lastNameController?.dispose();
    phoneNumberController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    passwordConfirmController?.dispose();
    googleSignInButtonModel.dispose();
  }

  /// Additional helper methods are added here.

}

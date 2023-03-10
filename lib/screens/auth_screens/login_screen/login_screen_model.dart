import '/auth/auth_util.dart';
import '/component/google_sign_in_button/google_sign_in_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Model for GoogleSignInButton component.
  late GoogleSignInButtonModel googleSignInButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    googleSignInButtonModel =
        createModel(context, () => GoogleSignInButtonModel());
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    googleSignInButtonModel.dispose();
  }

  /// Additional helper methods are added here.

}

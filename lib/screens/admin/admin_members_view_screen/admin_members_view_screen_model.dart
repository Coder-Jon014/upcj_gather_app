import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminMembersViewScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MemberSearch widget.
  TextEditingController? memberSearchController;
  String? Function(BuildContext, String?)? memberSearchControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    memberSearchController?.dispose();
  }

  /// Additional helper methods are added here.

}

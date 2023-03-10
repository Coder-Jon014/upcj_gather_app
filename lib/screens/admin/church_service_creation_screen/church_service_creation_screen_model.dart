import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChurchServiceCreationScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for churchServiceTitle widget.
  TextEditingController? churchServiceTitleController;
  String? Function(BuildContext, String?)?
      churchServiceTitleControllerValidator;
  DateTime? datePicked;
  // State field(s) for serviceCapacity widget.
  TextEditingController? serviceCapacityController;
  String? Function(BuildContext, String?)? serviceCapacityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    churchServiceTitleController?.dispose();
    serviceCapacityController?.dispose();
  }

  /// Additional helper methods are added here.

}

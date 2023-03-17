import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';

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

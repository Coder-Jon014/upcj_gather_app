import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EmailAddresEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressController?.dispose();
  }

  /// Additional helper methods are added here.

}

import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AdminNotificationCreationScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for notificationTitle widget.
  TextEditingController? notificationTitleController;
  String? Function(BuildContext, String?)? notificationTitleControllerValidator;
  // State field(s) for notificationInfoField widget.
  TextEditingController? notificationInfoFieldController;
  String? Function(BuildContext, String?)?
      notificationInfoFieldControllerValidator;
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    notificationTitleController?.dispose();
    notificationInfoFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}

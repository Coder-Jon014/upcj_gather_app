import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MemberProfileScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for PhoneNumberUpdateTextField widget.
  TextEditingController? phoneNumberUpdateTextFieldController;
  String? Function(BuildContext, String?)?
      phoneNumberUpdateTextFieldControllerValidator;
  // State field(s) for EmailUpdateTextField widget.
  TextEditingController? emailUpdateTextFieldController;
  String? Function(BuildContext, String?)?
      emailUpdateTextFieldControllerValidator;
  // State field(s) for AddressUpdateTextField widget.
  TextEditingController? addressUpdateTextFieldController;
  String? Function(BuildContext, String?)?
      addressUpdateTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    phoneNumberUpdateTextFieldController?.dispose();
    emailUpdateTextFieldController?.dispose();
    addressUpdateTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}

import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';

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
  String? _phoneNumberUpdateTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for EmailUpdateTextField widget.
  TextEditingController? emailUpdateTextFieldController;
  String? Function(BuildContext, String?)?
      emailUpdateTextFieldControllerValidator;
  String? _emailUpdateTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for AddressUpdateTextField widget.
  TextEditingController? addressUpdateTextFieldController;
  String? Function(BuildContext, String?)?
      addressUpdateTextFieldControllerValidator;
  String? _addressUpdateTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    phoneNumberUpdateTextFieldControllerValidator =
        _phoneNumberUpdateTextFieldControllerValidator;
    emailUpdateTextFieldControllerValidator =
        _emailUpdateTextFieldControllerValidator;
    addressUpdateTextFieldControllerValidator =
        _addressUpdateTextFieldControllerValidator;
  }

  void dispose() {
    phoneNumberUpdateTextFieldController?.dispose();
    emailUpdateTextFieldController?.dispose();
    addressUpdateTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_notification_screen_model.dart';
export 'admin_notification_screen_model.dart';

class AdminNotificationScreenWidget extends StatefulWidget {
  const AdminNotificationScreenWidget({
    Key? key,
    this.notificationInfo,
  }) : super(key: key);

  final DocumentReference? notificationInfo;

  @override
  _AdminNotificationScreenWidgetState createState() =>
      _AdminNotificationScreenWidgetState();
}

class _AdminNotificationScreenWidgetState
    extends State<AdminNotificationScreenWidget> {
  late AdminNotificationScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminNotificationScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NotificationsRecord>(
      stream: NotificationsRecord.getDocument(widget.notificationInfo!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final adminNotificationScreenNotificationsRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              adminNotificationScreenNotificationsRecord.notificationTitle!,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF14181B),
                    fontSize: 28.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: GoogleFonts.asMap()
                        .containsKey(FlutterFlowTheme.of(context).title2Family),
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 48.0,
                  icon: Icon(
                    Icons.close_rounded,
                    color: Color(0xFF57636C),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Container(
                width: 394.4,
                height: 803.3,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/584/600',
                        width: 461.2,
                        height: 197.7,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 40.0, 0.0, 0.0),
                        child: Text(
                          adminNotificationScreenNotificationsRecord
                              .notificationInfo!,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 15.0, 0.0, 0.0),
                        child: Text(
                          dateTimeFormat(
                              'MMMMEEEEd',
                              adminNotificationScreenNotificationsRecord
                                  .createdDate!),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

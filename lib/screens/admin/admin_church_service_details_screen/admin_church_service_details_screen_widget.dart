import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'admin_church_service_details_screen_model.dart';
export 'admin_church_service_details_screen_model.dart';

class AdminChurchServiceDetailsScreenWidget extends StatefulWidget {
  const AdminChurchServiceDetailsScreenWidget({
    Key? key,
    this.churchServiceInfo,
  }) : super(key: key);

  final DocumentReference? churchServiceInfo;

  @override
  _AdminChurchServiceDetailsScreenWidgetState createState() =>
      _AdminChurchServiceDetailsScreenWidgetState();
}

class _AdminChurchServiceDetailsScreenWidgetState
    extends State<AdminChurchServiceDetailsScreenWidget>
    with TickerProviderStateMixin {
  late AdminChurchServiceDetailsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminChurchServiceDetailsScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ChurchServiceRecord>(
      stream: ChurchServiceRecord.getDocument(widget.churchServiceInfo!),
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
        final adminChurchServiceDetailsScreenChurchServiceRecord =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 50.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () async {
                          context.pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          adminChurchServiceDetailsScreenChurchServiceRecord
                              .title!,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title1Family),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/carFull@2x.png',
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 161.2,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      adminChurchServiceDetailsScreenChurchServiceRecord
                          .availableSpace!
                          .toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Lexend Deca',
                        color: Color(0xFF090F13),
                        fontWeight: FontWeight.w100,
                        fontSize: 92.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'SPACE(S) LEFT',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText2Family),
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'Fill Status',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                    ],
                  ),
                ),
                StreamBuilder<List<ChurchServiceRecord>>(
                  stream: queryChurchServiceRecord(
                    queryBuilder: (churchServiceRecord) =>
                        churchServiceRecord.where('available_space',
                            isLessThanOrEqualTo:
                                adminChurchServiceDetailsScreenChurchServiceRecord
                                    .serviceCapacity),
                    singleRecord: true,
                  ),
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
                    List<ChurchServiceRecord>
                        progressBarChurchServiceRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final progressBarChurchServiceRecord =
                        progressBarChurchServiceRecordList.isNotEmpty
                            ? progressBarChurchServiceRecordList.first
                            : null;
                    return LinearPercentIndicator(
                      percent: 0.4,
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 24.0,
                      animation: true,
                      progressColor: Color(0xFF4B39EF),
                      backgroundColor: Color(0xFFF1F4F8),
                      barRadius: Radius.circular(40.0),
                      padding: EdgeInsets.zero,
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'Date',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText2Family),
                                  ),
                            ),
                          ),
                          Text(
                            dateTimeFormat(
                                'M/d H:mm',
                                adminChurchServiceDetailsScreenChurchServiceRecord
                                    .serviceDate!),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'Capacity',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText2Family),
                                  ),
                            ),
                          ),
                          Text(
                            adminChurchServiceDetailsScreenChurchServiceRecord
                                .serviceCapacity!
                                .toString(),
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    height: 200.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'I want to attend!',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF39D2C0),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1Family),
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 24.0),
                                      child: Text(
                                        'Click the button to secure your attendance for the service',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.75),
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF39D2C0),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 7.0,
                                  color: Color(0x8E000000),
                                  offset: Offset(0.0, 3.0),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: () async {
                                if (adminChurchServiceDetailsScreenChurchServiceRecord
                                    .membersAttending!
                                    .toList()
                                    .contains(
                                        '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}')) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        content: Text('You already registered'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                } else {
                                  final churchServiceUpdateData1 = {
                                    'members_attending': FieldValue.arrayUnion([
                                      '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}'
                                    ]),
                                  };
                                  await widget.churchServiceInfo!
                                      .update(churchServiceUpdateData1);

                                  final churchServiceUpdateData2 = {
                                    'available_space':
                                        FieldValue.increment(-(1)),
                                  };
                                  await widget.churchServiceInfo!
                                      .update(churchServiceUpdateData2);
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        content: Text(
                                            'You just registered to join the service'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Great!'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              child: FaIcon(
                                FontAwesomeIcons.checkCircle,
                                color: Colors.white,
                                size: 70.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'AdminChurchServiceEditScreen',
                      queryParams: {
                        'churchServiceInfo': serializeParam(
                          adminChurchServiceDetailsScreenChurchServiceRecord
                              .reference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Edit Service',
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).subtitle2Family,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).subtitle2Family),
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                AuthUserStreamWidget(
                  builder: (context) => Text(
                    '${valueOrDefault(currentUserDocument?.firstName, '')} ${valueOrDefault(currentUserDocument?.lastName, '')}',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

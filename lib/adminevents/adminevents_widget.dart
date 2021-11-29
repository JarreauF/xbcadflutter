import '../adminevents_copy/adminevents_copy_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdmineventsWidget extends StatefulWidget {
  AdmineventsWidget({Key key}) : super(key: key);

  @override
  _AdmineventsWidgetState createState() => _AdmineventsWidgetState();
}

class _AdmineventsWidgetState extends State<AdmineventsWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            'Your events',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Expanded(
                        child: AuthUserStreamWidget(
                          child: StreamBuilder<List<PostEventRecord>>(
                            stream: queryPostEventRecord(
                              queryBuilder: (postEventRecord) => postEventRecord
                                  .where('admin', isEqualTo: currentUserEmail),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: Color(0xFFFC5B3F),
                                    ),
                                  ),
                                );
                              }
                              List<PostEventRecord> columnPostEventRecordList =
                                  snapshot.data;
                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnPostEventRecordList.length,
                                      (columnIndex) {
                                    final columnPostEventRecord =
                                        columnPostEventRecordList[columnIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 2, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 90,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        AdmineventsCopyWidget(
                                                      booking:
                                                          columnPostEventRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Image.network(
                                                            columnPostEventRecord
                                                                .imgUrl,
                                                            width: 74,
                                                            height: 74,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 1, 0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              AutoSizeText(
                                                                columnPostEventRecord
                                                                    .eventName
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 15,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme
                                                                    .subtitle1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF15212B),
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                columnPostEventRecord
                                                                    .eventLocation
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 15,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              StreamBuilder<
                                                                  List<
                                                                      PostEventRecord>>(
                                                                stream:
                                                                    queryPostEventRecord(
                                                                  queryBuilder: (postEventRecord) => postEventRecord.where(
                                                                      'event_name',
                                                                      isEqualTo:
                                                                          columnPostEventRecord
                                                                              .eventName),
                                                                  singleRecord:
                                                                      true,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50,
                                                                        height:
                                                                            50,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Color(0xFFFC5B3F),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<PostEventRecord>
                                                                      textPostEventRecordList =
                                                                      snapshot
                                                                          .data;
                                                                  // Return an empty Container when the document does not exist.
                                                                  if (snapshot
                                                                      .data
                                                                      .isEmpty) {
                                                                    return Container();
                                                                  }
                                                                  final textPostEventRecord = textPostEventRecordList
                                                                          .isNotEmpty
                                                                      ? textPostEventRecordList
                                                                          .first
                                                                      : null;
                                                                  return Text(
                                                                    '${textPostEventRecord.eventCapacity.toString()}  Tickets remaining'
                                                                        .maybeHandleOverflow(
                                                                      maxChars:
                                                                          30,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    style: FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: Color(
                                                                          0xFFFC5B3F),
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  );
                                                                },
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 8, 0),
                                                          child: Icon(
                                                            Icons
                                                                .chevron_right_outlined,
                                                            color: Color(
                                                                0xFF95A1AC),
                                                            size: 24,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => _loadingButton = true);
                  try {
                    await signOut();
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginWidget(),
                      ),
                      (r) => false,
                    );
                  } finally {
                    setState(() => _loadingButton = false);
                  }
                },
                text: 'Log out\n',
                options: FFButtonOptions(
                  width: 340,
                  height: 60,
                  color: Color(0xFFFC5B3F),
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                  elevation: 1,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
                loading: _loadingButton,
              ),
            )
          ],
        ),
      ),
    );
  }
}

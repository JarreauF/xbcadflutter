import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../event_info/event_info_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          automaticallyImplyLeading: true,
          actions: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.tertiaryColor,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            valueOrDefault<String>(
                              currentUserPhoto,
                              'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                            ),
                            width: MediaQuery.of(context).size.width * 0.09,
                            height: MediaQuery.of(context).size.height * 0.04,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(52, 0, 0, 28),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                        height: MediaQuery.of(context).size.height * 0.013,
                        decoration: BoxDecoration(
                          color: Color(0xFFFC5B3F),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: FlutterFlowTheme.tertiaryColor,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Where today?',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: FlutterFlowChoiceChips(
                      initialOption: choiceChipsValue ??= 'Seminar',
                      options: [
                        ChipData('Seminar', FontAwesomeIcons.solidCircle),
                        ChipData(
                            'Product Launch', FontAwesomeIcons.solidCircle),
                        ChipData('Networking', FontAwesomeIcons.solidCircle),
                        ChipData('Charity', FontAwesomeIcons.solidCircle)
                      ],
                      onChanged: (val) =>
                          setState(() => choiceChipsValue = val),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.tertiaryColor,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        iconColor: Color(0xFF32CD32),
                        iconSize: 7,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        elevation: 0,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: Colors.white,
                        textStyle: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Roboto',
                          color: Color(0xFFA8A8A8),
                          fontSize: 12,
                        ),
                        iconColor: FlutterFlowTheme.tertiaryColor,
                        iconSize: 7,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        elevation: 0,
                      ),
                      chipSpacing: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 1.56),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            color: Color(0xFFFC5B3F),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: StreamBuilder<List<PostEventRecord>>(
                                stream: queryPostEventRecord(
                                  queryBuilder: (postEventRecord) =>
                                      postEventRecord.where('event_category',
                                          isEqualTo: choiceChipsValue),
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
                                  List<PostEventRecord>
                                      listViewPostEventRecordList =
                                      snapshot.data;
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        listViewPostEventRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewPostEventRecord =
                                          listViewPostEventRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EventInfoWidget(
                                                      event:
                                                          listViewPostEventRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      listViewPostEventRecord
                                                          .imgUrl,
                                                    ).image,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 30, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewPostEventRecord
                                                            .eventStartTime
                                                            .maybeHandleOverflow(
                                                          maxChars: 25,
                                                          replacement: '…',
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .title2
                                                            .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                              .tertiaryColor,
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                      ),
                                                      Text(
                                                        listViewPostEventRecord
                                                            .eventEndTime
                                                            .maybeHandleOverflow(
                                                          maxChars: 25,
                                                          replacement: '…',
                                                        ),
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                              .tertiaryColor,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0,
                                                                    180, 20, 0),
                                                        child: Text(
                                                          listViewPostEventRecord
                                                              .eventName
                                                              .maybeHandleOverflow(
                                                            maxChars: 20,
                                                            replacement: '…',
                                                          ),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .title2
                                                                  .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: FlutterFlowTheme
                                                                .tertiaryColor,
                                                            fontSize: 30,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons.location_on,
                                                            color: Color(
                                                                0xFFEEEEEE),
                                                            size: 12,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              listViewPostEventRecord
                                                                  .eventLocation
                                                                  .maybeHandleOverflow(
                                                                maxChars: 30,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFFEEEEEE),
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

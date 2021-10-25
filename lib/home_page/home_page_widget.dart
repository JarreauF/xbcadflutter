import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String choiceChipsValue;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://picsum.photos/seed/940/600',
                          width: MediaQuery.of(context).size.width * 0.09,
                          height: MediaQuery.of(context).size.height * 0.04,
                          fit: BoxFit.cover,
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
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: TextFormField(
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFFA8A8A8),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 14, 0, 0),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color(0xFFA8A8A8),
                                    size: 18,
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFFA8A8A8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Icon(
                              Icons.filter_list,
                              color: Colors.black,
                              size: 24,
                            ),
                          )
                        ],
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
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 20, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
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
                                                'https://picsum.photos/seed/940/600',
                                              ).image,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 30, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '22',
                                                  style: FlutterFlowTheme.title2
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  'APR',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 180, 20, 0),
                                                  child: Text(
                                                    'Corporate Seminar',
                                                    style: FlutterFlowTheme
                                                        .title2
                                                        .override(
                                                      fontFamily: 'Roboto',
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
                                                      color: Color(0xFFEEEEEE),
                                                      size: 12,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 0, 0, 0),
                                                      child: Text(
                                                        'Riverden Street 42, Blv 2',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFFEEEEEE),
                                                          fontSize: 10,
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
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              'https://picsum.photos/seed/940/600',
                                            ).image,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 30, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '22',
                                                style: FlutterFlowTheme.title2
                                                    .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                              Text(
                                                'APR',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 180, 20, 0),
                                                child: Text(
                                                  'Water Pool Party',
                                                  style: FlutterFlowTheme.title2
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    fontSize: 30,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Color(0xFFEEEEEE),
                                                    size: 12,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 0, 0),
                                                    child: Text(
                                                      'Riverden Street 42, Blv 2',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                        fontSize: 10,
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
                                  )
                                ],
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

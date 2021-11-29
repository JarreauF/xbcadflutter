import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EventInfoWidget extends StatefulWidget {
  EventInfoWidget({
    Key key,
    this.event,
  }) : super(key: key);

  final PostEventRecord event;

  @override
  _EventInfoWidgetState createState() => _EventInfoWidgetState();
}

class _EventInfoWidgetState extends State<EventInfoWidget> {
  bool _loadingButton = false;
  int countControllerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              widget.event.imgUrl,
                            ).image,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: FaIcon(
                                  FontAwesomeIcons.longArrowAltLeft,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'HomePage'),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1, 0.4),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 325, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Text(
                                          widget.event.eventName
                                              .maybeHandleOverflow(
                                            maxChars: 15,
                                            replacement: '…',
                                          ),
                                          style:
                                              FlutterFlowTheme.title1.override(
                                            fontFamily: 'Roboto',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      AutoSizeText(
                                        '${widget.event.eventStartTime} - ${widget.event.eventEndTime}'
                                            .maybeHandleOverflow(
                                          maxChars: 30,
                                          replacement: '…',
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFFA8A8A8),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Color(0xFFA8A8A8),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'About',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 30, 20),
                              child: Text(
                                widget.event.eventDescription,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Roboto',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Divider(
                              color: Color(0xFFA8A8A8),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Number of tickets left',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFFA8A8A8),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    widget.event.eventCapacity.toString(),
                                    style: FlutterFlowTheme.title1,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Text(
                                'Map',
                                style: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Qty',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Roboto',
                                color: Color(0xFFA8A8A8),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.tertiaryColor,
                                        width: 1,
                                      ),
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.minus,
                                        color: enabled
                                            ? Colors.black
                                            : Color(0xFFEEEEEE),
                                        size: 20,
                                      ),
                                      incrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.plus,
                                        color: enabled
                                            ? Colors.black
                                            : Color(0xFFEEEEEE),
                                        size: 20,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      count: countControllerValue ??= 0,
                                      updateCount: (count) => setState(
                                          () => countControllerValue = count),
                                      stepSize: 1,
                                      minimum: 0,
                                      maximum: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 1, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        setState(() => _loadingButton = true);
                                        try {
                                          if ((countControllerValue) > (0)) {
                                            final eventBookingCreateData = {
                                              ...createEventBookingRecordData(
                                                seatQty: countControllerValue,
                                                eventName:
                                                    widget.event.eventName,
                                                eventStartTime:
                                                    widget.event.eventStartTime,
                                                eventEndTime:
                                                    widget.event.eventEndTime,
                                                eventLocation:
                                                    widget.event.eventLocation,
                                                user: currentUserEmail,
                                                ticketbooked:
                                                    widget.event.eventCapacity,
                                                eventimage: widget.event.imgUrl,
                                                admin: widget.event.admin,
                                              ),
                                              'event_details':
                                                  FieldValue.arrayUnion(
                                                      [widget.event.reference]),
                                              'booking_name':
                                                  FieldValue.arrayUnion(
                                                      [currentUserReference]),
                                            };
                                            await EventBookingRecord.collection
                                                .doc()
                                                .set(eventBookingCreateData);
                                          }
                                          if ((countControllerValue) > (0)) {
                                            final postEventUpdateData = {
                                              'event_capacity':
                                                  FieldValue.increment(-1),
                                            };
                                            await widget.event.reference
                                                .update(postEventUpdateData);
                                          }
                                        } finally {
                                          setState(
                                              () => _loadingButton = false);
                                        }
                                      },
                                      text: 'Book',
                                      options: FFButtonOptions(
                                        width: 155,
                                        height: 50,
                                        color: Color(0xFFFC5B3F),
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 0,
                                      ),
                                      loading: _loadingButton,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

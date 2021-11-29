import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFC5B3F),
        ),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                      child: Image.asset(
                        'assets/images/Gradient_Icon_Map_Navigation_App_Logo.png',
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Container(
                      width: 285,
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: TextFormField(
                              controller: emailTextController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.tertiaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.tertiaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.getFont(
                                'Lato',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.95, 0.5),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Container(
                      width: 285,
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: TextFormField(
                              controller: passwordTextController,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.tertiaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.tertiaryColor,
                                    width: 2,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
                                  ),
                                  child: Icon(
                                    passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: GoogleFonts.getFont(
                                'Lato',
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            setState(() => _loadingButton1 = true);
                            try {
                              final user = await createAccountWithEmail(
                                context,
                                emailTextController.text,
                                passwordTextController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'HomePage'),
                                ),
                                (r) => false,
                              );
                            } finally {
                              setState(() => _loadingButton1 = false);
                            }
                          },
                          text: 'Sign up',
                          options: FFButtonOptions(
                            width: 125,
                            height: 40,
                            color: Color(0x00FFFFFF),
                            textStyle: GoogleFonts.getFont(
                              'Lato',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: 0,
                          ),
                          loading: _loadingButton1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() => _loadingButton2 = true);
                              try {
                                final user = await signInWithEmail(
                                  context,
                                  emailTextController.text,
                                  passwordTextController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'HomePage'),
                                  ),
                                  (r) => false,
                                );
                              } finally {
                                setState(() => _loadingButton2 = false);
                              }
                            },
                            text: 'Sign in',
                            options: FFButtonOptions(
                              width: 125,
                              height: 40,
                              color: Color(0x00FFFFFF),
                              textStyle: GoogleFonts.getFont(
                                'Lato',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.tertiaryColor,
                                width: 2,
                              ),
                              borderRadius: 0,
                            ),
                            loading: _loadingButton2,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

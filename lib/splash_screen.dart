import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'splash_screen_model.dart';
export 'splash_screen_model.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({
    super.key,
    this.border,
  });

  final double? border;

  static String routeName = 'Splash_Screen';
  static String routePath = '/splashScreen';

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget>
    with TickerProviderStateMixin {
  late SplashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenModel());

    animationsMap.addAll({
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOutQuint,
            delay: 190.0.ms,
            duration: 600.0.ms,
            color: Color(0xFFFFB6B9),
            begin: 0.19,
            end: 1,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE7D3D9),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.5, -1.3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/shape-7.png',
                    width: 290,
                    height: 270,
                    fit: BoxFit.cover,
                    alignment: Alignment(0, -109),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/Screenshot_2025-03-25_184741.png',
                      width: 265.36,
                      height: 143.6,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, -0.62),
                child: AnimatedDefaultTextStyle(
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFD0178E),
                    letterSpacing: 0.0,
                    shadows: [
                      Shadow(
                        color: Color(0xFF131C22),
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0,
                      )
                    ],
                  ),
                  duration: Duration(milliseconds: 1440),
                  curve: Curves.easeInOutQuint,
                  child: Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, 0.88),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.goNamed(
                      RegistrationWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.scale,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 120),
                        ),
                      },
                    );
                  },
                  text: 'Get Started',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconAlignment: IconAlignment.start,
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xC6FFB6B9),
                    textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                    elevation: 0,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['buttonOnActionTriggerAnimation']!,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.13, -0.41),
                child: AnimatedDefaultTextStyle(
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Inter',
                        color: Color(0xFFE74A4F),
                        letterSpacing: 0.0,
                      ),
                  duration: Duration(milliseconds: 1440),
                  curve: Curves.elasticOut,
                  child: Text(
                    'With Rakshak+, Help is Just a Tap Away!',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.53),
                child: AnimatedDefaultTextStyle(
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Color(0xFFCF6FBD),
                        letterSpacing: 0.0,
                      ),
                  duration: Duration(milliseconds: 1440),
                  curve: Curves.bounceOut,
                  child: Text(
                    'Rakshak+ is a real-time emergency alert app enabling SOS, live location tracking, AI-based distress detection, and instant help services. 🚀📍',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

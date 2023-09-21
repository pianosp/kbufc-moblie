import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prediction_model.dart';
export 'prediction_model.dart';

class PredictionWidget extends StatefulWidget {
  const PredictionWidget({
    Key? key,
    required this.predictId,
  }) : super(key: key);

  final String? predictId;

  @override
  _PredictionWidgetState createState() => _PredictionWidgetState();
}

class _PredictionWidgetState extends State<PredictionWidget> {
  late PredictionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PredictionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF151515),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.08),
          child: AppBar(
            backgroundColor: Color(0xFF151515),
            iconTheme: IconThemeData(color: Colors.white),
            automaticallyImplyLeading: true,
            title: Image.asset(
              'assets/images/326803153_582683473233723_7323358625820795296_n.png',
              width: MediaQuery.sizeOf(context).width * 0.1,
              height: MediaQuery.sizeOf(context).height * 0.1,
              fit: BoxFit.contain,
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: GetPredictDataCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              final columnGetPredictDataResponse = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.7,
                    decoration: BoxDecoration(
                      color: Color(0xFF151515),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'YOU THINK THE SCORE WILL BE..',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        GetPredictDataCall.homeLogo(
                                          columnGetPredictDataResponse.jsonBody,
                                        ),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        GetPredictDataCall.homeTeam(
                                          columnGetPredictDataResponse.jsonBody,
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 15.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        GetPredictDataCall.awayLogo(
                                          columnGetPredictDataResponse.jsonBody,
                                        ),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        GetPredictDataCall.awayTeam(
                                          columnGetPredictDataResponse.jsonBody,
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 15.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 180.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x1DFFFFFF),
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        width: 2.0,
                                      ),
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.minusCircle,
                                        color: enabled
                                            ? Color(0xFF7D7D7D)
                                            : Color(0xFF7D7D7D),
                                        size: 30.0,
                                      ),
                                      incrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.plusCircle,
                                        color: enabled
                                            ? Color(0xFF7D7D7D)
                                            : Color(0xFF7D7D7D),
                                        size: 30.0,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 30.0,
                                            ),
                                      ),
                                      count: _model.homeScoreValue ??= 0,
                                      updateCount: (count) => setState(
                                          () => _model.homeScoreValue = count),
                                      stepSize: 1,
                                      minimum: 0,
                                    ),
                                  ),
                                  Container(
                                    width: 180.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x1DFFFFFF),
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        width: 2.0,
                                      ),
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.minusCircle,
                                        color: enabled
                                            ? Color(0xFF7D7D7D)
                                            : Color(0xFF7D7D7D),
                                        size: 30.0,
                                      ),
                                      incrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.plusCircle,
                                        color: enabled
                                            ? Color(0xFF7D7D7D)
                                            : Color(0xFF7D7D7D),
                                        size: 30.0,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 30.0,
                                            ),
                                      ),
                                      count: _model.awayScoreValue ??= 0,
                                      updateCount: (count) => setState(
                                          () => _model.awayScoreValue = count),
                                      stepSize: 1,
                                      minimum: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.apiResult286 =
                                  await CreatePredictionCall.call(
                                predictId: widget.predictId,
                                homeScore: _model.homeScoreValue?.toString(),
                                awayScore: _model.awayScoreValue?.toString(),
                                memberId: FFAppState().memberId,
                              );
                              if (CreatePredictionCall.res(
                                    (_model.apiResult286?.jsonBody ?? ''),
                                  ).toString() ==
                                  'success') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Predict'),
                                      content: Text('predict score success!.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );

                                context.pushNamed('Home');
                              }

                              setState(() {});
                            },
                            text: 'Predict Score',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF15822),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

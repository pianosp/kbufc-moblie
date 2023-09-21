import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'staff_coach_model.dart';
export 'staff_coach_model.dart';

class StaffCoachWidget extends StatefulWidget {
  const StaffCoachWidget({
    Key? key,
    this.staffPage,
  }) : super(key: key);

  final String? staffPage;

  @override
  _StaffCoachWidgetState createState() => _StaffCoachWidgetState();
}

class _StaffCoachWidgetState extends State<StaffCoachWidget> {
  late StaffCoachModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StaffCoachModel());
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
        backgroundColor: Color(0xFFF1F4F8),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.08),
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            automaticallyImplyLeading: true,
            title: Text(
              'STAFFCOACH',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 2.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                      ),
                      child: FutureBuilder<ApiCallResponse>(
                        future: StaffListCall.call(),
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
                          final gridViewStaffListResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final stafflist = StaffListCall.staffcoachList(
                                    gridViewStaffListResponse.jsonBody,
                                  )?.toList() ??
                                  [];
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 25.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: stafflist.length,
                                itemBuilder: (context, stafflistIndex) {
                                  final stafflistItem =
                                      stafflist[stafflistIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'StaffDetail',
                                        queryParameters: {
                                          'staffId': serializeParam(
                                            getJsonField(
                                              stafflistItem,
                                              r'''$.staff_id''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1E1E1E),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            getJsonField(
                                              stafflistItem,
                                              r'''$.link''',
                                            ),
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 5.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    stafflistItem,
                                                    r'''$.position''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Container(
                                                  width: 15.0,
                                                  height: 3.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEB6F3F),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 1.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    stafflistItem,
                                                    r'''$.firstName''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  getJsonField(
                                                    stafflistItem,
                                                    r'''$.lastName''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 5.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

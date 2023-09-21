import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'merchandise_and_auction_model.dart';
export 'merchandise_and_auction_model.dart';

class MerchandiseAndAuctionWidget extends StatefulWidget {
  const MerchandiseAndAuctionWidget({Key? key}) : super(key: key);

  @override
  _MerchandiseAndAuctionWidgetState createState() =>
      _MerchandiseAndAuctionWidgetState();
}

class _MerchandiseAndAuctionWidgetState
    extends State<MerchandiseAndAuctionWidget> {
  late MerchandiseAndAuctionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MerchandiseAndAuctionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await launchURL('https://kbufc-shop.flutterflow.app/loginPage');
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.08),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              'MERCHANDISE',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 25.0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
      ),
    );
  }
}

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'supplimentdetailspage_model.dart';
export 'supplimentdetailspage_model.dart';

class SupplimentdetailspageWidget extends StatefulWidget {
  const SupplimentdetailspageWidget({
    Key? key,
    required this.blog,
  }) : super(key: key);

  final DocumentReference? blog;

  @override
  _SupplimentdetailspageWidgetState createState() =>
      _SupplimentdetailspageWidgetState();
}

class _SupplimentdetailspageWidgetState
    extends State<SupplimentdetailspageWidget> with TickerProviderStateMixin {
  late SupplimentdetailspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupplimentdetailspageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Supplimentdetailspage'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<SupplimentInformationRecord>(
      stream: SupplimentInformationRecord.getDocument(widget.blog!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final supplimentdetailspageSupplimentInformationRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('SUPPLIMENTDETAILSIcon_porklumv_ON_TAP');
                logFirebaseEvent('Icon_navigate_back');
                context.pop();
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
            title: Text(
              ' ',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF151B1E),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
                child: badges.Badge(
                  badgeContent: Text(
                    '3',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                  ),
                  showBadge: true,
                  shape: badges.BadgeShape.circle,
                  badgeColor: FlutterFlowTheme.of(context).primary,
                  elevation: 4.0,
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 48.0,
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 30.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<SupplimentInformationRecord>>(
                  stream: querySupplimentInformationRecord(
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
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    List<SupplimentInformationRecord>
                        columnContainerSupplimentInformationRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final columnContainerSupplimentInformationRecord =
                        columnContainerSupplimentInformationRecordList
                                .isNotEmpty
                            ? columnContainerSupplimentInformationRecordList
                                .first
                            : null;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: StreamBuilder<SupplimentInformationRecord>(
                              stream: SupplimentInformationRecord.getDocument(
                                  columnContainerSupplimentInformationRecord!
                                      .reference),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                final productImageSupplimentInformationRecord =
                                    snapshot.data!;
                                return Hero(
                                  tag:
                                      supplimentdetailspageSupplimentInformationRecord
                                          .image!,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      supplimentdetailspageSupplimentInformationRecord
                                          .image!,
                                      width: double.infinity,
                                      height: 300.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 0.0, 4.0),
                            child: Text(
                              supplimentdetailspageSupplimentInformationRecord
                                  .categoryName!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              supplimentdetailspageSupplimentInformationRecord
                                  .supplimentName!,
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 0.0, 0.0),
                            child: Text(
                              formatNumber(
                                supplimentdetailspageSupplimentInformationRecord
                                    .price!,
                                formatType: FormatType.custom,
                                currency: '\$',
                                format: '',
                                locale: '',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Text(
                              supplimentdetailspageSupplimentInformationRecord
                                  .supplimentOverview!,
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                          Divider(
                            height: 24.0,
                            thickness: 2.0,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Icon(
                                            Icons.sticky_note_2_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Product Detail',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        supplimentdetailspageSupplimentInformationRecord
                                            .productDetails!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: Icons.chevron_right_rounded,
                                      collapseIcon:
                                          Icons.keyboard_arrow_down_rounded,
                                      iconSize: 24.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Container(
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                child: ExpandableNotifier(
                                  initialExpanded: false,
                                  child: ExpandablePanel(
                                    header: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Icon(
                                            Icons.local_shipping_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Shopping options',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Text(
                                        supplimentdetailspageSupplimentInformationRecord
                                            .shippingOptions!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: false,
                                      tapBodyToCollapse: false,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: Icons.chevron_right_rounded,
                                      collapseIcon:
                                          Icons.keyboard_arrow_down_rounded,
                                      iconSize: 24.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

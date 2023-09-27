import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.698, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        backgroundColor: Color(0xFF454646),
        appBar: AppBar(
          backgroundColor: Color(0xFF040404),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 30.0,
            ),
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () =>
                        FocusScope.of(context).requestFocus(_model.unfocusNode),
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: Dropdown06AccountWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
          ),
          title: Text(
            'Olá, ${getJsonField(
              FFAppState().CurrentUserJson,
              r'''$.nome''',
            ).toString()}',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 140.0,
                  constraints: BoxConstraints(
                    maxHeight: 140.0,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0xFF2A2A2A),
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            'Resumo',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 25.0,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 8.0, 8.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GMApiGroup.getRequisicaoCall.call(
                                        idUsuario: getJsonField(
                                          FFAppState().CurrentUserJson,
                                          r'''$.id_usuario''',
                                        ).toString(),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final taskDetailsGetRequisicaoResponse =
                                            snapshot.data!;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (taskDetailsGetRequisicaoResponse
                                                .succeeded) {
                                              context.pushNamed(
                                                'RequisicaoGeral',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .rightToLeft,
                                                  ),
                                                },
                                              );
                                            } else {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text('Ué!?'),
                                                            content: Text(
                                                                'Você não possui nenhuma requisicão, deseja criar uma?'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child:
                                                                    Text('Não'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child:
                                                                    Text('Sim'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                context.pushNamed(
                                                    'createRequisicao');
                                              } else {
                                                return;
                                              }
                                            }
                                          },
                                          child: Container(
                                            width: 150.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color: Color(0xFFE0E3E7),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    taskDetailsGetRequisicaoResponse
                                                            .succeeded
                                                        ? (GMApiGroup
                                                                .getRequisicaoCall
                                                                .idRequisicao(
                                                            taskDetailsGetRequisicaoResponse
                                                                .jsonBody,
                                                          ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()
                                                            .length
                                                            .toString()
                                                        : '0',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Requisições',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 8.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GMApiGroup
                                          .getRequisicaoConcluidaCall
                                          .call(
                                        idUsuario: getJsonField(
                                          FFAppState().CurrentUserJson,
                                          r'''$.id_usuario''',
                                        ).toString(),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final taskDetailsGetRequisicaoConcluidaResponse =
                                            snapshot.data!;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (taskDetailsGetRequisicaoConcluidaResponse
                                                .succeeded) {
                                              context.pushNamed(
                                                  'RequisicaoGeralConcluida');
                                            } else {
                                              return;
                                            }
                                          },
                                          child: Container(
                                            width: 150.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color: Color(0xFFE0E3E7),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    taskDetailsGetRequisicaoConcluidaResponse
                                                            .succeeded
                                                        ? (GMApiGroup
                                                                .getRequisicaoConcluidaCall
                                                                .idRequisicao(
                                                            taskDetailsGetRequisicaoConcluidaResponse
                                                                .jsonBody,
                                                          ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()
                                                            .length
                                                            .toString()
                                                        : '0',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                  ),
                                                  AutoSizeText(
                                                    'Completadas',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: GMApiGroup.getRequisicaoCall.call(
                      idUsuario: getJsonField(
                        FFAppState().CurrentUserJson,
                        r'''$.id_usuario''',
                      ).toString(),
                    ),
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
                      final taskDetailsGetRequisicaoResponse = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Visibility(
                          visible: taskDetailsGetRequisicaoResponse.succeeded,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Atuais Requisições',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                'Um resumo de suas requisições',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Builder(
                                    builder: (context) {
                                      final getReq =
                                          taskDetailsGetRequisicaoResponse
                                              .jsonBody
                                              .toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: getReq.length,
                                        itemBuilder: (context, getReqIndex) {
                                          final getReqItem =
                                              getReq[getReqIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 0.0,
                                                    color: Color(0xFFE0E3E7),
                                                    offset: Offset(0.0, 1.0),
                                                  )
                                                ],
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 2.0, 0.0, 2.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    SizedBox(
                                                      height: 100.0,
                                                      child: VerticalDivider(
                                                        width: 24.0,
                                                        thickness: 4.0,
                                                        indent: 12.0,
                                                        endIndent: 12.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    12.0,
                                                                    16.0,
                                                                    12.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'getRequisicaoInfo',
                                                              queryParameters: {
                                                                'idRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.id_requisicao''',
                                                                  ),
                                                                  ParamType.int,
                                                                ),
                                                                'tituloRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.nome''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'dataConclusao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.data_conclusao''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'descricaoRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.descricao''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'statusRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.status.nome''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'emailRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.usuarioResponsavel.email''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'sprintRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.id_sprint''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'dataCadastro':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.data_cadastro''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'responsavelRequisicao':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.usuarioResponsavel.nome''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'usuarioCadastro':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.usuario.nome''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    getJsonField(
                                                                      getReqItem,
                                                                      r'''$.nome''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .keyboard_arrow_right_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    getReqItem,
                                                                    r'''$.status.nome''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Entrega: ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          getReqItem,
                                                                          r'''$.data_conclusao''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    badges
                                                                        .Badge(
                                                                      badgeContent:
                                                                          Text(
                                                                        ' ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.white,
                                                                            ),
                                                                      ),
                                                                      showBadge:
                                                                          true,
                                                                      shape: badges
                                                                          .BadgeShape
                                                                          .circle,
                                                                      badgeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      elevation:
                                                                          4.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          8.0,
                                                                          8.0),
                                                                      position:
                                                                          badges.BadgePosition
                                                                              .topStart(),
                                                                      animationType: badges
                                                                          .BadgeAnimationType
                                                                          .scale,
                                                                      toAnimate:
                                                                          true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Update',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation3']!);
                    },
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

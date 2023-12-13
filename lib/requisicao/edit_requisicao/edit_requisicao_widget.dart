import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_requisicao_model.dart';
export 'edit_requisicao_model.dart';

class EditRequisicaoWidget extends StatefulWidget {
  const EditRequisicaoWidget({
    Key? key,
    required this.idRequisicao,
    required this.tituloRequisicao,
    required this.dataConclusao,
    required this.descricaoRequisicao,
    required this.statusRequisicao,
    required this.emailRequisicao,
    required this.sprintRequisicao,
    required this.dataCadastro,
  }) : super(key: key);

  final int? idRequisicao;
  final String? tituloRequisicao;
  final String? dataConclusao;
  final String? descricaoRequisicao;
  final String? statusRequisicao;
  final String? emailRequisicao;
  final String? sprintRequisicao;
  final String? dataCadastro;

  @override
  _EditRequisicaoWidgetState createState() => _EditRequisicaoWidgetState();
}

class _EditRequisicaoWidgetState extends State<EditRequisicaoWidget> {
  late EditRequisicaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditRequisicaoModel());

    _model.nomeRequisicaoController ??=
        TextEditingController(text: widget.tituloRequisicao);
    _model.nomeRequisicaoFocusNode ??= FocusNode();

    _model.descricaoRequisicaoController ??= TextEditingController(
        text: widget.descricaoRequisicao == 'null'
            ? null
            : widget.descricaoRequisicao);
    _model.descricaoRequisicaoFocusNode ??= FocusNode();

    _model.emailUsuarioController ??=
        TextEditingController(text: widget.emailRequisicao);
    _model.emailUsuarioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GMApiGroup.getStatusCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF454646),
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitThreeBounce(
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        final editRequisicaoGetStatusResponse = snapshot.data!;
        return Title(
            title: 'editRequisicao',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
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
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => _model.unfocusNode.canRequestFocus
                                ? FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode)
                                : FocusScope.of(context).unfocus(),
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
                    'GM Tasker',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
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
                  child: FutureBuilder<ApiCallResponse>(
                    future: GMApiGroup.getSprintNaoConcluidaCall.call(
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
                            width: 40.0,
                            height: 40.0,
                            child: SpinKitThreeBounce(
                              color: Colors.black,
                              size: 40.0,
                            ),
                          ),
                        );
                      }
                      final rowGetSprintNaoConcluidaResponse = snapshot.data!;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Container(
                              width: 100.0,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            32.0, 32.0, 32.0, 2.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Editar Requisição',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 24.0),
                                                child: Text(
                                                  'Edite as informações',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .nomeRequisicaoController,
                                                    focusNode: _model
                                                        .nomeRequisicaoFocusNode,
                                                    autofocus: true,
                                                    autofillHints: [
                                                      AutofillHints.name
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Titulo',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    validator: _model
                                                        .nomeRequisicaoControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: 370.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .descricaoRequisicaoController,
                                                    focusNode: _model
                                                        .descricaoRequisicaoFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: '   Descrição',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    maxLines: null,
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    validator: _model
                                                        .descricaoRequisicaoControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .statusDropDownValueController ??=
                                                    FormFieldController<String>(
                                                  _model.statusDropDownValue ??=
                                                      widget.statusRequisicao,
                                                ),
                                                options: (GMApiGroup
                                                        .getStatusCall
                                                        .nomeStatus(
                                                  editRequisicaoGetStatusResponse
                                                      .jsonBody,
                                                ) as List)
                                                    .map<String>(
                                                        (s) => s.toString())
                                                    .toList()!
                                                    .map((e) => e.toString())
                                                    .toList(),
                                                onChanged: (val) => setState(() =>
                                                    _model.statusDropDownValue =
                                                        val),
                                                width: 340.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Selecione o status',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 55.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 10.0),
                                                child: Text(
                                                  'Essa requisição é pra você?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Switch.adaptive(
                                                      value: _model
                                                              .switchEmailValue ??=
                                                          true,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchEmailValue =
                                                            newValue!);
                                                        if (newValue!) {
                                                          setState(() {
                                                            _model
                                                                .emailUsuarioController
                                                                ?.clear();
                                                          });
                                                        }
                                                      },
                                                      activeColor:
                                                          Color(0xFF292828),
                                                      activeTrackColor:
                                                          Colors.black,
                                                      inactiveTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      inactiveThumbColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: 370.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .emailUsuarioController,
                                                          focusNode: _model
                                                              .emailUsuarioFocusNode,
                                                          autofocus: true,
                                                          autofillHints: [
                                                            AutofillHints.email
                                                          ],
                                                          readOnly: _model
                                                              .switchEmailValue!,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'Email',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          validator: _model
                                                              .emailUsuarioControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_model.switchEmailValue! &&
                                                  rowGetSprintNaoConcluidaResponse
                                                      .succeeded)
                                                Container(
                                                  width: 327.0,
                                                  height: 105.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF454646),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Text(
                                                          'Deseja alocar essa requisição a uma Sprint?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Switch.adaptive(
                                                              value: _model
                                                                      .switchSprintValue ??=
                                                                  false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.switchSprintValue =
                                                                        newValue!);

                                                                if (!newValue!) {
                                                                  setState(() {
                                                                    _model
                                                                        .sprintDropDownValueController
                                                                        ?.reset();
                                                                  });
                                                                }
                                                              },
                                                              activeColor: Color(
                                                                  0xFF292828),
                                                              activeTrackColor:
                                                                  Colors.black,
                                                              inactiveTrackColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              inactiveThumbColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .sprintDropDownValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.sprintDropDownValue ??=
                                                                    widget
                                                                        .sprintRequisicao,
                                                              ),
                                                              options: (GMApiGroup
                                                                      .getSprintNaoConcluidaCall
                                                                      .idSprint(
                                                                rowGetSprintNaoConcluidaResponse
                                                                    .jsonBody,
                                                              ) as List)
                                                                  .map<String>(
                                                                      (s) => s
                                                                          .toString())
                                                                  .toList()!
                                                                  .map((e) => e
                                                                      .toString())
                                                                  .toList(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.sprintDropDownValue =
                                                                          val),
                                                              width: 265.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                              hintText:
                                                                  'Qual o número da Sprint?',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius:
                                                                  55.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              disabled: !_model
                                                                  .switchSprintValue!,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              Text(
                                                'Insira a data de conclusão:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 20.0),
                                                child: FlutterFlowCalendar(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  weekFormat: true,
                                                  weekStartsMonday: false,
                                                  rowHeight: 64.0,
                                                  onChange: (DateTimeRange?
                                                      newSelectedDate) {
                                                    setState(() => _model
                                                            .calendarSelectedDay =
                                                        newSelectedDate);
                                                  },
                                                  titleStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                  dayOfWeekStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge,
                                                  dateStyle: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                  ),
                                                  selectedDateStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall,
                                                  inactiveDateStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          _model.apiEditReq = await GMApiGroup
                                              .editRequisicaoCall
                                              .call(
                                            idRequisicao:
                                                widget.idRequisicao?.toString(),
                                            nome: _model
                                                .nomeRequisicaoController.text,
                                            descricao: _model
                                                .descricaoRequisicaoController
                                                .text,
                                            dataConclusao: dateTimeFormat(
                                              'dd/MM/yyyy',
                                              _model.calendarSelectedDay?.end,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            statusNome:
                                                _model.statusDropDownValue,
                                            idUsuarioCriacao: getJsonField(
                                              FFAppState().CurrentUserJson,
                                              r'''$.id_usuario''',
                                            ).toString(),
                                            idAtualResponsavel: getJsonField(
                                              FFAppState().CurrentUserJson,
                                              r'''$.id_usuario''',
                                            ).toString(),
                                            idStatus: '1',
                                            idSprint:
                                                rowGetSprintNaoConcluidaResponse
                                                        .succeeded
                                                    ? _model.sprintDropDownValue
                                                    : (_model.switchSprintValue!
                                                        ? _model
                                                            .sprintDropDownValue
                                                        : '0'),
                                            email: _model.switchEmailValue!
                                                ? widget.emailRequisicao
                                                : _model.emailUsuarioController
                                                    .text,
                                            dataCadastro: widget.dataCadastro,
                                          );
                                          if ((_model.apiEditReq?.succeeded ??
                                              true)) {
                                            context.pushNamed('getRequisicao');
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  (_model.apiEditReq
                                                          ?.bodyText ??
                                                      ''),
                                                  style: GoogleFonts.getFont(
                                                    'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 5000),
                                                backgroundColor:
                                                    Color(0xFFFF0000),
                                              ),
                                            );
                                          }

                                          setState(() {});
                                        },
                                        text: _model.switchEmailValue!
                                            ? 'Salvar'
                                            : 'Enviar',
                                        options: FFButtonOptions(
                                          width: 370.0,
                                          height: 44.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.black,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}

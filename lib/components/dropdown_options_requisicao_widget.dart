import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_options_requisicao_model.dart';
export 'dropdown_options_requisicao_model.dart';

class DropdownOptionsRequisicaoWidget extends StatefulWidget {
  const DropdownOptionsRequisicaoWidget({
    Key? key,
    required this.idRequisicao,
    this.tituloRequisicao,
    required this.dataConclusao,
    required this.decricaoRequisicao,
    required this.statusRequisicao,
    required this.emailRequisicao,
    required this.sprintRequisicao,
    required this.dataCriacao,
    this.sprintNomeRequisicao,
    this.solicitanteRequisicao,
  }) : super(key: key);

  final int? idRequisicao;
  final String? tituloRequisicao;
  final String? dataConclusao;
  final String? decricaoRequisicao;
  final String? statusRequisicao;
  final String? emailRequisicao;
  final String? sprintRequisicao;
  final String? dataCriacao;
  final String? sprintNomeRequisicao;
  final String? solicitanteRequisicao;

  @override
  _DropdownOptionsRequisicaoWidgetState createState() =>
      _DropdownOptionsRequisicaoWidgetState();
}

class _DropdownOptionsRequisicaoWidgetState
    extends State<DropdownOptionsRequisicaoWidget> {
  late DropdownOptionsRequisicaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownOptionsRequisicaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
                child: Text(
                  'Opções',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'getRequisicaoInfo',
                      queryParameters: {
                        'tituloRequisicao': serializeParam(
                          widget.tituloRequisicao,
                          ParamType.String,
                        ),
                        'dataConclusao': serializeParam(
                          widget.dataConclusao,
                          ParamType.String,
                        ),
                        'descricaoRequisicao': serializeParam(
                          widget.decricaoRequisicao,
                          ParamType.String,
                        ),
                        'idRequisicao': serializeParam(
                          0,
                          ParamType.int,
                        ),
                        'statusRequisicao': serializeParam(
                          widget.statusRequisicao,
                          ParamType.String,
                        ),
                        'dataCadastro': serializeParam(
                          widget.dataCriacao,
                          ParamType.String,
                        ),
                        'sprintRequisicao': serializeParam(
                          widget.sprintNomeRequisicao,
                          ParamType.String,
                        ),
                        'responsavelRequisicao': serializeParam(
                          getJsonField(
                            FFAppState().CurrentUserJson,
                            r'''$.nome''',
                          ).toString(),
                          ParamType.String,
                        ),
                        'usuarioCadastro': serializeParam(
                          widget.solicitanteRequisicao,
                          ParamType.String,
                        ),
                        'emailRequisicao': serializeParam(
                          widget.emailRequisicao,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Visualizar',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (!(widget.statusRequisicao == 'CONCLUIDO' ? true : false))
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    var _shouldSetState = false;
                    _model.apiResultn3o =
                        await GMApiGroup.concluirRequisicaoCall.call(
                      idRequisicao: widget.idRequisicao?.toString(),
                    );
                    _shouldSetState = true;
                    if ((_model.apiResultn3o?.succeeded ?? true)) {
                      Navigator.pop(context);
                    } else {
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.task_alt_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Concluir',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'editRequisicao',
                    queryParameters: {
                      'idRequisicao': serializeParam(
                        widget.idRequisicao,
                        ParamType.int,
                      ),
                      'tituloRequisicao': serializeParam(
                        widget.tituloRequisicao,
                        ParamType.String,
                      ),
                      'dataConclusao': serializeParam(
                        widget.dataConclusao,
                        ParamType.String,
                      ),
                      'descricaoRequisicao': serializeParam(
                        widget.decricaoRequisicao,
                        ParamType.String,
                      ),
                      'statusRequisicao': serializeParam(
                        widget.statusRequisicao,
                        ParamType.String,
                      ),
                      'emailRequisicao': serializeParam(
                        widget.emailRequisicao,
                        ParamType.String,
                      ),
                      'sprintRequisicao': serializeParam(
                        widget.sprintRequisicao,
                        ParamType.String,
                      ),
                      'dataCadastro': serializeParam(
                        widget.dataCriacao,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Editar',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Tem certeza?'),
                            content: Text('Deseja excluir essa requisição?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, false),
                                child: Text('Não'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, true),
                                child: Text('Sim'),
                              ),
                            ],
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    _model.apiResult002 =
                        await GMApiGroup.deleteRequisicaoCall.call(
                      idRequisicao: widget.idRequisicao?.toString(),
                    );
                    if ((_model.apiResult002?.succeeded ?? true)) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Requisicao excluida!',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).customColor1,
                        ),
                      );
                    }
                  }

                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.delete_outline_rounded,
                            color: FlutterFlowTheme.of(context).error,
                            size: 20.0,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Deletar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).error,
                                  ),
                            ),
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
  }
}

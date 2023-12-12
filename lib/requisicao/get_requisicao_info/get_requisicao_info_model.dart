import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'get_requisicao_info_widget.dart' show GetRequisicaoInfoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class GetRequisicaoInfoModel extends FlutterFlowModel<GetRequisicaoInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeRequisicao widget.
  FocusNode? nomeRequisicaoFocusNode;
  TextEditingController? nomeRequisicaoController;
  String? Function(BuildContext, String?)? nomeRequisicaoControllerValidator;
  // State field(s) for Status widget.
  FocusNode? statusFocusNode;
  TextEditingController? statusController;
  final statusMask = MaskTextInputFormatter(mask: '##-##-####');
  String? Function(BuildContext, String?)? statusControllerValidator;
  // State field(s) for dataCadastro widget.
  FocusNode? dataCadastroFocusNode;
  TextEditingController? dataCadastroController;
  final dataCadastroMask = MaskTextInputFormatter(mask: '##-##-####');
  String? Function(BuildContext, String?)? dataCadastroControllerValidator;
  // State field(s) for dataConclusao widget.
  FocusNode? dataConclusaoFocusNode;
  TextEditingController? dataConclusaoController;
  final dataConclusaoMask = MaskTextInputFormatter(mask: '##-##-####');
  String? Function(BuildContext, String?)? dataConclusaoControllerValidator;
  // State field(s) for descricaoRequisicao widget.
  FocusNode? descricaoRequisicaoFocusNode;
  TextEditingController? descricaoRequisicaoController;
  String? Function(BuildContext, String?)?
      descricaoRequisicaoControllerValidator;
  // State field(s) for NomeUsuarioResponsavel widget.
  FocusNode? nomeUsuarioResponsavelFocusNode;
  TextEditingController? nomeUsuarioResponsavelController;
  String? Function(BuildContext, String?)?
      nomeUsuarioResponsavelControllerValidator;
  // State field(s) for NomeUsuarioRequisitante widget.
  FocusNode? nomeUsuarioRequisitanteFocusNode;
  TextEditingController? nomeUsuarioRequisitanteController;
  String? Function(BuildContext, String?)?
      nomeUsuarioRequisitanteControllerValidator;
  // State field(s) for SprintReq widget.
  FocusNode? sprintReqFocusNode;
  TextEditingController? sprintReqController;
  String? Function(BuildContext, String?)? sprintReqControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeRequisicaoFocusNode?.dispose();
    nomeRequisicaoController?.dispose();

    statusFocusNode?.dispose();
    statusController?.dispose();

    dataCadastroFocusNode?.dispose();
    dataCadastroController?.dispose();

    dataConclusaoFocusNode?.dispose();
    dataConclusaoController?.dispose();

    descricaoRequisicaoFocusNode?.dispose();
    descricaoRequisicaoController?.dispose();

    nomeUsuarioResponsavelFocusNode?.dispose();
    nomeUsuarioResponsavelController?.dispose();

    nomeUsuarioRequisitanteFocusNode?.dispose();
    nomeUsuarioRequisitanteController?.dispose();

    sprintReqFocusNode?.dispose();
    sprintReqController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditRequisicaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeRequisicao widget.
  TextEditingController? nomeRequisicaoController;
  String? Function(BuildContext, String?)? nomeRequisicaoControllerValidator;
  // State field(s) for dataConclusao widget.
  TextEditingController? dataConclusaoController;
  final dataConclusaoMask = MaskTextInputFormatter(mask: '##-##-####');
  String? Function(BuildContext, String?)? dataConclusaoControllerValidator;
  // State field(s) for descricaoRequisicao widget.
  TextEditingController? descricaoRequisicaoController;
  String? Function(BuildContext, String?)?
      descricaoRequisicaoControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for switchEmail widget.
  bool? switchEmailValue;
  // State field(s) for EmailUsuario widget.
  TextEditingController? emailUsuarioController;
  String? Function(BuildContext, String?)? emailUsuarioControllerValidator;
  // State field(s) for switchSprint widget.
  bool? switchSprintValue;
  // State field(s) for SprintDropDown widget.
  String? sprintDropDownValue;
  FormFieldController<String>? sprintDropDownValueController;
  // Stores action output result for [Backend Call - API (Edit Requisicao)] action in Button widget.
  ApiCallResponse? apiEditReq;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeRequisicaoController?.dispose();
    dataConclusaoController?.dispose();
    descricaoRequisicaoController?.dispose();
    emailUsuarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

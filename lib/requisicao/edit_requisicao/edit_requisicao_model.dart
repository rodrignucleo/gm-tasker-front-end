import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_requisicao_widget.dart' show EditRequisicaoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditRequisicaoModel extends FlutterFlowModel<EditRequisicaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeRequisicao widget.
  FocusNode? nomeRequisicaoFocusNode;
  TextEditingController? nomeRequisicaoController;
  String? Function(BuildContext, String?)? nomeRequisicaoControllerValidator;
  // State field(s) for descricaoRequisicao widget.
  FocusNode? descricaoRequisicaoFocusNode;
  TextEditingController? descricaoRequisicaoController;
  String? Function(BuildContext, String?)?
      descricaoRequisicaoControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for switchEmail widget.
  bool? switchEmailValue;
  // State field(s) for EmailUsuario widget.
  FocusNode? emailUsuarioFocusNode;
  TextEditingController? emailUsuarioController;
  String? Function(BuildContext, String?)? emailUsuarioControllerValidator;
  // State field(s) for switchSprint widget.
  bool? switchSprintValue;
  // State field(s) for SprintDropDown widget.
  String? sprintDropDownValue;
  FormFieldController<String>? sprintDropDownValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (Edit Requisicao)] action in Button widget.
  ApiCallResponse? apiEditReq;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    nomeRequisicaoFocusNode?.dispose();
    nomeRequisicaoController?.dispose();

    descricaoRequisicaoFocusNode?.dispose();
    descricaoRequisicaoController?.dispose();

    emailUsuarioFocusNode?.dispose();
    emailUsuarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

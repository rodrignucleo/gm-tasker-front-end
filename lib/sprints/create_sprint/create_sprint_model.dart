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

class CreateSprintModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeSprint widget.
  TextEditingController? nomeSprintController;
  String? Function(BuildContext, String?)? nomeSprintControllerValidator;
  // State field(s) for descricaoSprint widget.
  TextEditingController? descricaoSprintController;
  String? Function(BuildContext, String?)? descricaoSprintControllerValidator;
  // State field(s) for dataConclusao widget.
  TextEditingController? dataConclusaoController;
  final dataConclusaoMask = MaskTextInputFormatter(mask: '##-##-####');
  String? Function(BuildContext, String?)? dataConclusaoControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // Stores action output result for [Backend Call - API (Create Sprint)] action in Button widget.
  ApiCallResponse? apiResultmb7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeSprintController?.dispose();
    descricaoSprintController?.dispose();
    dataConclusaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

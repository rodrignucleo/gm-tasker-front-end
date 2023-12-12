import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'get_usuario_widget.dart' show GetUsuarioWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetUsuarioModel extends FlutterFlowModel<GetUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeUsuario widget.
  FocusNode? nomeUsuarioFocusNode;
  TextEditingController? nomeUsuarioController;
  String? Function(BuildContext, String?)? nomeUsuarioControllerValidator;
  // State field(s) for cpfUsuario widget.
  FocusNode? cpfUsuarioFocusNode;
  TextEditingController? cpfUsuarioController;
  String? Function(BuildContext, String?)? cpfUsuarioControllerValidator;
  // State field(s) for telefoneUsuario widget.
  FocusNode? telefoneUsuarioFocusNode;
  TextEditingController? telefoneUsuarioController;
  String? Function(BuildContext, String?)? telefoneUsuarioControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // Stores action output result for [Backend Call - API (Delete Usuario)] action in RichTextSpan widget.
  ApiCallResponse? apiResult6w8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeUsuarioFocusNode?.dispose();
    nomeUsuarioController?.dispose();

    cpfUsuarioFocusNode?.dispose();
    cpfUsuarioController?.dispose();

    telefoneUsuarioFocusNode?.dispose();
    telefoneUsuarioController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

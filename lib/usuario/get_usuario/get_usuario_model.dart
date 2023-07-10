import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetUsuarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeUsuario widget.
  TextEditingController? nomeUsuarioController;
  String? Function(BuildContext, String?)? nomeUsuarioControllerValidator;
  // State field(s) for cpfUsuario widget.
  TextEditingController? cpfUsuarioController;
  String? Function(BuildContext, String?)? cpfUsuarioControllerValidator;
  // State field(s) for telefoneUsuario widget.
  TextEditingController? telefoneUsuarioController;
  String? Function(BuildContext, String?)? telefoneUsuarioControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // Stores action output result for [Backend Call - API (Delete Usuario)] action in RichTextSpan widget.
  ApiCallResponse? apiResult6w8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeUsuarioController?.dispose();
    cpfUsuarioController?.dispose();
    telefoneUsuarioController?.dispose();
    emailAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

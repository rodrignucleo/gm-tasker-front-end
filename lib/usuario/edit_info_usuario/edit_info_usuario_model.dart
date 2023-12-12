import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_info_usuario_widget.dart' show EditInfoUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditInfoUsuarioModel extends FlutterFlowModel<EditInfoUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeUsuario widget.
  FocusNode? nomeUsuarioFocusNode;
  TextEditingController? nomeUsuarioController;
  String? Function(BuildContext, String?)? nomeUsuarioControllerValidator;
  // State field(s) for cpfUsuario widget.
  FocusNode? cpfUsuarioFocusNode;
  TextEditingController? cpfUsuarioController;
  final cpfUsuarioMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfUsuarioControllerValidator;
  // State field(s) for telefoneUsuario widget.
  FocusNode? telefoneUsuarioFocusNode;
  TextEditingController? telefoneUsuarioController;
  final telefoneUsuarioMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneUsuarioControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Stores action output result for [Backend Call - API (Edit Usuario)] action in Button widget.
  ApiCallResponse? apiEditUser;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

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

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

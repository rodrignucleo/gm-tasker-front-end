import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_ponto_widget.dart' show EditPontoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditPontoModel extends FlutterFlowModel<EditPontoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for dataConclusao widget.
  FocusNode? dataConclusaoFocusNode;
  TextEditingController? dataConclusaoController;
  final dataConclusaoMask = MaskTextInputFormatter(mask: '##:##:##');
  String? Function(BuildContext, String?)? dataConclusaoControllerValidator;
  // Stores action output result for [Backend Call - API (Edit Ponto)] action in Button widget.
  ApiCallResponse? apiEditPonto;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    dataConclusaoFocusNode?.dispose();
    dataConclusaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

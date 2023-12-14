import '/backend/api_requests/api_calls.dart';
import '/components/dropdown06_account_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_sprint_widget.dart' show EditSprintWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditSprintModel extends FlutterFlowModel<EditSprintWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeSprint widget.
  FocusNode? nomeSprintFocusNode;
  TextEditingController? nomeSprintController;
  String? Function(BuildContext, String?)? nomeSprintControllerValidator;
  // State field(s) for descricaoSprint widget.
  FocusNode? descricaoSprintFocusNode;
  TextEditingController? descricaoSprintController;
  String? Function(BuildContext, String?)? descricaoSprintControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (Edit Sprint)] action in Button widget.
  ApiCallResponse? apiResultmb7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    nomeSprintFocusNode?.dispose();
    nomeSprintController?.dispose();

    descricaoSprintFocusNode?.dispose();
    descricaoSprintController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

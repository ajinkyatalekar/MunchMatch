import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool? give = false;

  String ubitInput = 'ERROR';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for UBIT_FIELD widget.
  FocusNode? ubitFieldFocusNode;
  TextEditingController? ubitFieldController;
  String? Function(BuildContext, String?)? ubitFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ubitFieldFocusNode?.dispose();
    ubitFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

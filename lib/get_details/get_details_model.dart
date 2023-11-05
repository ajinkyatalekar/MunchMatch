import '/flutter_flow/flutter_flow_util.dart';
import 'get_details_widget.dart' show GetDetailsWidget;
import 'package:flutter/material.dart';

class GetDetailsModel extends FlutterFlowModel<GetDetailsWidget> {
  ///  Local state fields for this page.

  String giver = 'null';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

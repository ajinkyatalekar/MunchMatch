import '/flutter_flow/flutter_flow_util.dart';
import 'give_details_widget.dart' show GiveDetailsWidget;
import 'package:flutter/material.dart';

class GiveDetailsModel extends FlutterFlowModel<GiveDetailsWidget> {
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

import 'package:flutter/material.dart';

import '../done_keyboard.dart';

class KeyboardDoneConfiguration {
  final BuildContext context;
  final List<FocusNode> focusNodes;

  KeyboardDoneConfiguration({required this.context, required this.focusNodes});

  KeyboardActionsConfig get buildConfig {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: focusNodes
          .map((focusNode) => KeyboardActionsItem(focusNode: focusNode))
          .toList(),
    );
  }
}

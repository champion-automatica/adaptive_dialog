import 'package:flutter/cupertino.dart';

import '../../adaptive_dialog.dart';

abstract mixin class CommonTextInputDialog {
  List<DialogTextField> get textFields;

  Iterable<TextEditingController> get textEditingControllers => textFields.map(
        (tf) {
          final tc = TextEditingController(text: tf.initialText);
          final selection = tf.initialTextSelection;
          if (selection != null) {
            tc.selection = selection;
          }
          return tc;
        },
      );
}

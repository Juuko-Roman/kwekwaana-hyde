import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> confirmDialogue(BuildContext context, title, content, textok, textcancel) {
  return confirm(
    context,
    title: Text(title),
    content: Text(content),
    textOK: Text(textok),
    textCancel: Text(textcancel),
  );
}

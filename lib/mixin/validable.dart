import 'package:flutter/material.dart';
import 'package:in_classe/extension_function/context_extensions.dart';

import '../constant/palette.dart';

/// If editing model objects fields through setters throws any FormatExceptions,
/// display a snackbar with the error details
mixin Validable<T extends StatefulWidget> on State<T> {
  bool validate(Function() task) {
    try {
      task();
      return true;
    } on FormatException catch (e) {
      context.snackbar(e.message, backgroundColor: Palette.error);
      return false;
    }
  }
}

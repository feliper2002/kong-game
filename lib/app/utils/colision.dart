import 'package:flutter/cupertino.dart';

bool collidibleObject({Offset? dimensions, Offset? position}) {
  try {
    assert(
      (dimensions == null && position != null) ||
          (dimensions != null && position == null) ||
          (dimensions != null && position != null),
    );
    return true;
  } on AssertionError catch (_) {
    return false;
  }
}

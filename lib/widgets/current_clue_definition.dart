import 'package:flutter/material.dart';
import '../data.dart';

class CurrentClueDefinition extends InheritedWidget {
  CurrentClueDefinition({
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

  int clueNum = currentClue;

  static CurrentClueDefinition of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CurrentClueDefinition);
  }

  void completeClue() {
    clues[currentClue].incomplete = false;
    currentClue += 1;
    clueNum = currentClue;
  }

  @override
  bool updateShouldNotify(CurrentClueDefinition oldWidget) =>
      clueNum != oldWidget.clueNum;
}

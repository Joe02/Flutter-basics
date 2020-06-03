import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizBackButton extends StatelessWidget {
  final bool _isBackButtonVisible;
  final void Function() onBackPressed;

  QuizBackButton(this._isBackButtonVisible, this.onBackPressed);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isBackButtonVisible,
      child: RaisedButton(
          child: Text("Voltar para última pergunta"),
          onPressed: onBackPressed
      ),
    );
  }

}
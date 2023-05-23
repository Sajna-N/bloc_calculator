part of 'calc_bloc.dart';

abstract class CalcEvent {}

class ButtonClicked extends CalcEvent {
  final String btnText;
  ButtonClicked({required this.btnText});
}

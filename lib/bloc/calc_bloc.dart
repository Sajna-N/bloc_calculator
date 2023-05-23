import 'package:flutter_bloc/flutter_bloc.dart';

part 'calc_event.dart';
part 'calc_state.dart';

class CalcBloc extends Bloc<CalcEvent, CalcState> {
  CalcBloc() : super(const CalcState(response: '')) {
    // List<String> text = [];
    String res = '';
    int first = 0;
    // int first = int.tryParse(text) ?? 0;
    // String first = '';
    // String second = '';
    int second = 0;
    String opp = '';
    on<ButtonClicked>((event, emit) {
      final String input = event.btnText;
      String text = state.response;

      if (input == "C") {
        res = '';
        text = '';
        first = 0;
        second = 0;
      } else if (input == "+" || input == "-" || input == "*" || input == "/") {
        opp = input;
        res = "";
        first = int.parse(text);
      } else if (input == "=") {
        second = int.parse(text);
        // second = int.tryParse(text) ?? 0;
        print(first);
        print(second);
        int one = first;
        int two = second;

        if (opp == "+") {
          res = (one + two).toString();
          // res = "";
          print(res);
        }
        if (opp == "-") {
          res = (one - two).toString();
        }
        if (opp == "*") {
          res = (one * two).toString();
        }
        if (opp == "/") {
          res = (one ~/ two).toString();
          // res = '';
        }
      } else {
        res = int.parse(text + input).toString();
      }

      emit(CalcState(response: res));
      // print(response);
    });
  }
}

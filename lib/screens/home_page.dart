import 'package:bloc_calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> firstRow = ["9", "8", "7", "+"],
      secondRow = ["6", "5", "4", "-"],
      thirdRow = ["3", "2", "1", "*"],
      fourthRow = ["C", "0", "=", "/"];
  // fifthRow = ["CLEAR"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: BlocBuilder<CalcBloc, CalcState>(
        builder: (context, state) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.bottomRight,
                    // child: responseText(state),
                    child: Text(
                      state.response,
                      style: const TextStyle(
                          fontSize: 45, color: Colors.deepOrange),
                    ),
                  ),
                ),
                customRow(firstRow),
                customRow(secondRow),
                customRow(thirdRow),
                customRow(fourthRow),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget customRow(List<String> row) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: row.map((e) => Button(val: e)).toList(),
    );
  }
}

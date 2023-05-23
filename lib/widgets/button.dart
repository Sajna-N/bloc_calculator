import 'package:bloc_calculator/bloc/calc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Button extends StatelessWidget {
  final String val;
  const Button({super.key, required this.val});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          context.read<CalcBloc>().add(ButtonClicked(btnText: val));
        },
        child: Text(
          val,
          style: const TextStyle(fontSize: 35.0, color: Colors.deepOrange),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../busines_logic/cubits/change_color.dart';

class ChangeColorPage extends StatefulWidget {
  const ChangeColorPage({super.key});

  @override
  State<ChangeColorPage> createState() => _ChangeColorPageState();
}

class _ChangeColorPageState extends State<ChangeColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ChangeColorCubit, ChangeColorState>(
        
        listener: (context, state) {
          if (state.status == ChangeColorStatus.green) {
            print('Green');
          }
        },
        child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  color: changeColor(context.watch<ChangeColorCubit>().state.status),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () => context.read<ChangeColorCubit>().changeColor(ChangeColorStatus.red),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text('red', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () => context.read<ChangeColorCubit>().changeColor(ChangeColorStatus.green),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Text('green', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () => context.read<ChangeColorCubit>().changeColor(ChangeColorStatus.blue),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      child: const Text('blue', style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () => context.read<ChangeColorCubit>().changeColor(ChangeColorStatus.yellow),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                        backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      ),
                      child: const Text('yellow', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }

  Color changeColor(ChangeColorStatus selectedStatus) {
    switch (selectedStatus) {
      case ChangeColorStatus.blue:
        return Colors.blue;
      case ChangeColorStatus.red:
        return Colors.red;
      case ChangeColorStatus.green:
        return Colors.green;
      case ChangeColorStatus.yellow:
        return Colors.yellow;
    }
  }
}

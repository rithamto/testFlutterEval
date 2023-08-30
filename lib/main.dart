// ignore_for_file: must_be_immutable, override_on_non_overriding_member

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testfluttereval/cubit/logicCubit.dart';
import 'package:testfluttereval/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testfluttereval/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:after_layout/after_layout.dart' as after_layout;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( EvalExample.provider());
}

class EvalExample extends StatefulWidget {
  EvalExample({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LogicCubit>(
            create: (BuildContext context) => LogicCubit()),
      ],
      child: EvalExample(),
    );
  }

  @override
  State<StatefulWidget> createState() => EvalExampleSate();

}
class EvalExampleSate extends State<EvalExample> with after_layout.AfterLayoutMixin{

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LogicCubit>().getData();
  }

  // @override
  // void initState() {   
  //   context.read<LogicCubit>().getData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicCubit, MainState>(
      builder: (BuildContext context, state) { 
        final package = state.data!.code;
        return  EvalWidget(
          packages: package!,
          assetPath: 'assets/program.evc',
          library: 'package:testfluttereval/main.dart',
          function: 'MyApp.',
          args: const [null],
        );
      },
    );
  }  
}

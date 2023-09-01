// ignore_for_file: must_be_immutable, override_on_non_overriding_member, depend_on_referenced_packages

import 'dart:async';
import 'dart:io';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';
import 'package:testfluttereval/cubit/logicCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testfluttereval/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:after_layout/after_layout.dart' as after_layout;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(EvalExample.provider());
}

class EvalExample extends StatefulWidget {
  const EvalExample({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LogicCubit>(
            create: (BuildContext context) => LogicCubit()),
      ],
      child: const EvalExample(),
    );
  }

  @override
  State<EvalExample> createState() => EvalExampleSate();
}

class EvalExampleSate extends State<EvalExample>
    with after_layout.AfterLayoutMixin {

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LogicCubit>().getData();
  }


  Map<String, Map<String, String>> test = {
    'testfluttereval': {
      'global_colors.dart': '''
            import 'package:flutter/material.dart';

            class GlobalColors {
              static const Color bgColor = Color(0xfff1f2f0);
              static const Color debtColor = Color(0xff9f1e1e);
              static const Color hi = Color(0xff00aed0);
            }
          ''',
      'main.dart': '''
              import 'package:flutter/material.dart';
              import 'package:testfluttereval/global_colors.dart';
              
              class MyApp extends StatelessWidget {
                const MyApp({super.key});

                // This widget is the root of your application.
                @override
                Widget build(BuildContext context) {
                  return MaterialApp(
                    title: 'flutter_eval demo',
                    home: const MyHomePage(title: 'flutter_eval demo home page'),
                  );
                }
              }

              class MyHomePage extends StatefulWidget {
                const MyHomePage({Key? key, required this.title}) : super(key: key);

                final String title;

                @override
                State<MyHomePage> createState() => _MyHomePageState();
              }

              class _MyHomePageState extends State<MyHomePage> {
                _MyHomePageState();
                int _counter = 0;

                void _incrementCounter() {
                  setState(() {
                    _counter++;
                  });
                }

                @override
                Widget build(BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: GlobalColors.debtColor,
                      title: Text(widget.title),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '\$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      )
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
                  );
                }
              }
            '''
    }
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogicCubit,MainState>(
      builder: (context, state) {
        final url = state.data?.code ?? "";
        return EvalWidget(
          uri: Uri.parse(url), 
          function: 'Home.', 
          library: 'package:miniapp/miniapp.dart',
          args: [null], 
          assetPath: '', 
          packages: {},
        );
      },  
    );
  }
}
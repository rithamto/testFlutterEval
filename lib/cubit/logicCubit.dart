import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:testfluttereval/data.dart';

part 'logicState.dart';
part 'logicCubit.freezed.dart';

class LogicCubit extends Cubit<MainState> {
  LogicCubit() : super(const MainState.initial(data: MainStateData()));

  Stream<void> getData() async*{
    final snapshot = FirebaseFirestore.instance.collection('item').doc('p1C24c8TICNOWxFsLA7Q');
    snapshot.snapshots().listen((event) {
      var data = event.data();
      Map<String, Map<String, String>> test = {
        'testfluttereval': {
          'global_colors.dart': '''
            import 'package:flutter/material.dart';

            class GlobalColors {
              static const Color bgColor = Color(0xfff1f3f5);
              static const Color debtColor = Color(0xff9f1e1e);
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
                      //backgroundColor: GlobalColors.bgColor,
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
      Data map = Data.fromMap(data!);
      emit(MainState.getMenu(data: state.data?.copyWith(code: map.code ?? test)));
    });
  }
}
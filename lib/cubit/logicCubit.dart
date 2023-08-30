// ignore_for_file: file_names

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
      
      Data map = Data.fromMap(data!);
      emit(MainState.getMenu(data: state.data?.copyWith(code: map.code)));
    });
  }
}
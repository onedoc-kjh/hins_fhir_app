import 'dart:convert';
import 'dart:io';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/api_service.dart';
import 'package:hins_fhir/dummy.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.freezed.dart';

part 'home_view_model.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    String? nameText,
    String? firstSocialText,
    String? secondSocialText,
    String? reasonText,
    String? token,
    String? userId,
    Map<String,dynamic>? healthData,
    @Default(0) int screenIndex,
  }) = _HomeState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  final _sharedFiles = <SharedMediaFile>[];

  @override
  HomeState build() {
    ReceiveSharingIntent.instance.getMediaStream().listen(
      (event)async {
        _sharedFiles.clear();
        _sharedFiles.addAll(event);
        final File file = File(event.first.path);
        String contents = await file.readAsString();
        final jsonData = jsonDecode(contents);
        Dummy.healthRecode = jsonData;
        state = state.copyWith(healthData: Dummy.healthRecode);
      },
    );
    ReceiveSharingIntent.instance.getInitialMedia().then((value) {
      _sharedFiles.clear();
      _sharedFiles.addAll(value);
      print(_sharedFiles.map((f) => f.toMap()));
      print(value);
      print("++++++++++++++++++++++++++++++");
      ReceiveSharingIntent.instance.reset();
    });
    return const HomeState();
  }
  void changeScreen(int index){
    state = state.copyWith(screenIndex : index);
  }
}
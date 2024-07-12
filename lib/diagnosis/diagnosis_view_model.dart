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

part 'diagnosis_view_model.freezed.dart';

part 'diagnosis_view_model.g.dart';

@freezed
class DiagnosisState with _$DiagnosisState {
  const factory DiagnosisState({
    String? nameText,
    String? firstSocialText,
    String? secondSocialText,
    String? reasonText,
    String? token,
    String? userId,
    Map<String, dynamic>? healthData,
  }) = _DiagnosisState;
}

@riverpod
class DiagnosisViewModel extends _$DiagnosisViewModel {
  final _sharedFiles = <SharedMediaFile>[];

  @override
  DiagnosisState build() {
    ReceiveSharingIntent.instance.getMediaStream().listen(
      (event) async {
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
    return const DiagnosisState();
  }

  void setNameText(String? text) {
    state = state.copyWith(nameText: text);
  }

  void setFirstSocialText(String? text) {
    state = state.copyWith(firstSocialText: text);
  }

  void setSecondSocialText(String? text) {
    state = state.copyWith(secondSocialText: text);
  }

  void setReason(String? text) {
    state = state.copyWith(reasonText: text);
  }

  Future reservationPost() async {
    String channelName = 'hins_fhir_1';
    await HttpClient().post(path: "/reservation", params: {
      "Name": state.nameText,
      "SocialNumber": "${state.firstSocialText}-${state.secondSocialText}",
      "Subject": state.reasonText,
      "Channel": channelName,
      "PatientId": Dummy.healthId
    }).then(
      (value) {
        print(value.response);
      },
    );
  }

  Future phrHealthScreeningsPost() async {
    final resp = await HttpClient().post(path: "/checkup", params: Dummy.healthRecode);
    print(resp.response);
    Dummy.healthId = resp.response;
  }
}

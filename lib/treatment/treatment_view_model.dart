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

part 'treatment_view_model.freezed.dart';

part 'treatment_view_model.g.dart';

@freezed
class TreatmentState with _$TreatmentState {
  const factory TreatmentState({
   dynamic treatmentData,
  }) = _TreatmentState;
}

@riverpod
class TreatmentViewModel extends _$TreatmentViewModel {

  @override
  Future<TreatmentState> build() async{

    final resp = await HttpClient().get("/treatment/2496");
    // final resp = await HttpClient().get("/treatment/${2107}");



    return TreatmentState(treatmentData: resp.response);
    // return TreatmentState();
  }

}
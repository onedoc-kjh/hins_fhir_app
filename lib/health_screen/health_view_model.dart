import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/api_service.dart';
import 'package:hins_fhir/dummy.dart';
import 'package:hins_fhir/home/home_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_view_model.freezed.dart';
part 'health_view_model.g.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState({
    Map<String?,dynamic>? healthData,
  }) = _HealthState;
}

@riverpod
class HealthViewModel extends _$HealthViewModel {
  @override
  Future<HealthState> build() async{
    final resp =  await HttpClient().get("/checkup/${Dummy.healthId}");
    print(resp.response);
    //
    return HealthState(healthData: resp.response);
    // return HealthState(healthData: healthTestData);
  }


}
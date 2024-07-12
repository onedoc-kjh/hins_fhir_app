import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/base/base_screen.dart';
import 'package:hins_fhir/diagnosis/diagnosis_view_model.dart';
import 'package:hins_fhir/dummy.dart';
import 'package:hins_fhir/health_screen/health_screen.dart';
import 'package:hins_fhir/home/home_view_model.dart';
import 'package:hins_fhir/video_call/%08video_call_screen.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class DiagnosisScreen extends ConsumerWidget {
  const DiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(diagnosisViewModelProvider);
    final viewModel = ref.read(diagnosisViewModelProvider.notifier);
    return Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.only(top: 0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("이름"),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      onChanged: (value) => viewModel.setNameText(value),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("주민등록번호"),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                          onChanged: (value) =>
                              viewModel.setFirstSocialText(value),
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextFormField(
                          onChanged: (value) =>
                              viewModel.setSecondSocialText(value),
                          obscureText: true,
                          obscuringCharacter: "●",
                          maxLength: 7,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text("환자 호소내용"),
                  const SizedBox(height: 12),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 100,
                      onChanged: (value) => viewModel.setReason(value),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(Dummy.healthRecode != null
                      ? "건강검진정보 데이터가 저장되었습니다."
                      : "건강검진정보 데이터가 없습니다.",style: TextStyle(fontSize: 20),),
                  ElevatedButton(
                    onPressed: () async {
                      viewModel.phrHealthScreeningsPost();
                    },
                    child: const Text("의사에게 건강검진 정보 전송"),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () async {
                      await viewModel.reservationPost();
                      await BaseScreen().push(context, VideoCallScreen());
                    },
                    child: const Text("진료실 이동"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

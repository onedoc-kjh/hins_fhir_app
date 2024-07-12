import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/base/base_screen.dart';
import 'package:hins_fhir/diagnosis/diagnosis_view_model.dart';
import 'package:hins_fhir/dummy.dart';
import 'package:hins_fhir/treatment/treatment_view_model.dart';
import 'package:hins_fhir/video_call/%08video_call_screen.dart';
import 'package:intl/intl.dart';

class TreatmentScreen extends ConsumerWidget {
  const TreatmentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(treatmentViewModelProvider);
    final viewModel = ref.read(diagnosisViewModelProvider.notifier);
    return Scaffold(
        body: provider.when(
            data: (data) {
              List<dynamic>? response = data.treatmentData;
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      if (response?.isEmpty == true)
                        const Center(child: Text("진료기록이 없습니다.")),
                      if (response?.isNotEmpty == true)
                        ...response!.map(
                          (e) {
                            final creatAt = DateTime.parse(e["createdAt"]);
                            final creatAtDate =
                                DateFormat("yyyy-MM-dd").format(creatAt);
                            final subject = e["subject"];
                            final assessment = e["assessment"];
                            return Column(
                              children: [
                                Text(
                                  "${creatAtDate}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                treatmentListWidget("호소내용", subject),
                                treatmentListWidget("진단내용", assessment),
                                const Divider()
                              ],
                            );
                          },
                        )
                      // Text("${data == null ? null : data}"),
                    ],
                  ),
                ),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => Center(child: CircularProgressIndicator())));
  }

  Widget treatmentListWidget(String _title, String _content) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Text(
                _title,
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: Text(
                _content,
                maxLines: 100,
              ),
            )
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}

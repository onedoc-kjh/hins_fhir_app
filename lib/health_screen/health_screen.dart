import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/base/base_screen.dart';
import 'package:hins_fhir/health_screen/health_view_model.dart';

class HealthScreen extends ConsumerWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(healthViewModelProvider);
    return BaseScreen(
      body: provider.when(
        data: (data) {
          final healthData = data.healthData;
          final List<dynamic> observation = healthData?["observations"];
          return SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  textRow("이름", "${healthData?["patientName"]}"),
                  textRow("주민등록번호", "${healthData?["socialNumber"]}"),
                  textRow("병원이름", "${healthData?["hospitalName"]}"),
                  textRow("주치의", "${healthData?["doctorName"]}"),
                  SizedBox(height: 10,),
                  Divider(height: 1,color: Colors.black,),
                  SizedBox(height: 10,),
                  observationListWidget(observation),
                  // ...observation.map((e) {
                  //   print(e.values);
                  //   return textRow("${e.keys}", "");
                  // }).toList()
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) => SizedBox(child: Text("$error")),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget textRow(String title, String content) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Text(title, textAlign: TextAlign.end,),
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              content,
            )
          ],
        ),
        // Divider(
        //   // color: Colors.black,
        // )
      ],
    );
  }

  Widget observationListWidget(List<dynamic> observationList) {
    return Column(children: [
      ...observationList.map((e) {
        String title = e.keys.toString();
        String content = e.values.toString();
        String _title = title.replaceAll('(', '').replaceAll(')', '');
        String _content = content.replaceAll('(', '').replaceAll(')', '');
        if(_title == "몸무게"||_title == "키"){
          _content = (int.parse(_content) / 10).toStringAsFixed(1);
          print("object");
        }
        if(_title == "시력_좌"||_title == "시력_우"){
          _content= _content.substring(0, 1) + '.' + _content.substring(1);
        }
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 180,
                child: Text(_title, textAlign: TextAlign.end,),
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
          Divider()
        ],
      );
      },),

    ],);
  }
}

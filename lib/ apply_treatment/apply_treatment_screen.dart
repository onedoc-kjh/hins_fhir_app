import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/base/base_screen.dart';

class ApplyTreatmentScreen extends ConsumerWidget {
  const ApplyTreatmentScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return BaseScreen(
      title: "진료신청하기",
      body: Column(children: [

      ],),
    );
  }
}

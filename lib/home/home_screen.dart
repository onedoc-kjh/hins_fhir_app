import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/diagnosis/diagnosis_screen.dart';
import 'package:hins_fhir/health_screen/health_screen.dart';
import 'package:hins_fhir/home/home_view_model.dart';
import 'package:hins_fhir/treatment/treatment_screen.dart';
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = [
      DiagnosisScreen(),
      HealthScreen(),
      TreatmentScreen(),
    ];
    final appBarTitle = ["진료", "건강검진정보", "진료기록"];
    final provider = ref.watch(homeViewModelProvider);
    final viewModel = ref.read(homeViewModelProvider.notifier);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.screenIndex,
            onTap: (value) => viewModel.changeScreen(value),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital),
                label: '진료',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined),
                label: '건강검진정보',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: '진료기록',
              ),
            ]),
        appBar: AppBar(
          title: Text(appBarTitle[provider.screenIndex]),
          centerTitle: true,
        ),
        body: screens[provider.screenIndex]);
  }
}

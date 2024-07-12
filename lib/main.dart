import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/home/home_screen.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

void main() {
  runApp(ProviderScope(

    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ReceiveSharingIntent.instance.getMediaStream().listen((event) {
      print(event);
      print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    },);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
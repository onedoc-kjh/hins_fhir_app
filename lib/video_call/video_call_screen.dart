import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/base/base_screen.dart';
import 'package:hins_fhir/video_call/video_call_view_model.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as rtc_local_view;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as rtc_remote_view;

class VideoCallScreen extends ConsumerWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(videoCallViewModelProvider);
    return BaseScreen(
      title: "진료실",
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                   provider.uid != null? Container(
                    child: rtc_remote_view.SurfaceView(
                        uid: provider.uid!, channelId: "hins_fhir_1"),
                  ): Center(child: Text("진료실 연결중 입니다."),),
                  provider.uid != null?Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 120,
                        height: 160,
                        child: const rtc_local_view.SurfaceView(),
                      ),
                    ),
                  ):const SizedBox(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(onPressed: () {
                      provider.rtcEngine?.leaveChannel();
                      provider.rtcEngine?.destroy();
                      Navigator.pop(context);
                    }, child: const Text("나가기")),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}



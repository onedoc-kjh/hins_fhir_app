import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hins_fhir/api_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_call_view_model.freezed.dart';
part 'video_call_view_model.g.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const factory VideoCallState({
    RtcEngine? rtcEngine,
    int? uid,
  }) = _VideoCallState;
}

@riverpod
class VideoCallViewModel extends _$VideoCallViewModel {
  @override
  VideoCallState build() {
    Future.microtask(
      () async {
        //
        await agoraInit();
      },
    );
    return VideoCallState();
  }

  Future agoraInit() async {
    final resp = await [Permission.camera, Permission.microphone].request();

    final cameraPermission = resp[Permission.camera];
    final micPermission = resp[Permission.microphone];

    if (cameraPermission != PermissionStatus.granted || micPermission != PermissionStatus.granted) {
      throw '카메라 또는 마이크 권한이 없습니다.';
    }

    // RtcEngine 초기화
    RtcEngineContext context = RtcEngineContext("아고라키값");
    final engine = await RtcEngine.createWithContext(context);
    await engine.setChannelProfile(ChannelProfile.Communication);
    VideoEncoderConfiguration videoConfig = VideoEncoderConfiguration(
        orientationMode: VideoOutputOrientationMode.FixedPortrait,
        mirrorMode: VideoMirrorMode.Enabled);
    await engine.setVideoEncoderConfiguration(videoConfig);
    await engine.enableVideo();
    await engine.startPreview();

    joinChannel(engine: engine);
  }

  Future<void> joinChannel({
    required RtcEngine engine,
  }) async {
    String channelName = 'hins_fhir_1';
    int id = 2;
    final tokenResp = await HttpClient().get("/api/calls/rtc/$channelName/audience/uid/$id", true);
    final token =
        "007eJxTYKgtXPR144fIElM3F2f1P4Wpv/wCjiRYSe63LvhbuSl5SpoCg4VpWnJSqkFqkrGlqYlRmrGlRYqxmZGRiYFhSkqScVLyjfz+tIZARobwwnxWRgYIBPG5GTIy84rj0zIyi+INGRgAZxoijw==";

    await engine.enableVideo();
    engine.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (channel, uid, elapsed) {},
      userJoined: (int uid_, int elapsed) {
        state = state.copyWith(uid: uid_, rtcEngine: engine);
      },
      leaveChannel: (stats) {
        state = state.copyWith(uid: null);
      },
    ));

    try {
      await engine.joinChannel(
        token,
        channelName,
        null,
        id,
      );
    } on PlatformException {
      await engine.leaveChannel();
      await engine.joinChannel(
        token,
        channelName,
        null,
        id,
      );
    }
  }
}

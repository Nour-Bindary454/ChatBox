import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:chatting_app/root/root_app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDXpOU6Vhkv6c7VTSLai2blrNdOxV_35Kc',
          appId: "1:795476330680:android:959d3e45ca47f23e38cc4d",
          messagingSenderId: '795476330680',
          projectId: "chatting-app-d8db3"));
  await AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notification',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: Colors.teal,
        ledColor: Colors.white)
  ],
  channelGroups: [
    NotificationChannelGroup(
        channelGroupKey: 'basic_channel_groub',
        channelGroupName: 'basic group',
  )],
  debug: true,
  );
  FirebaseMessaging.onMessage.listen((message) {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 1,
            channelKey: 'basic_channel',
            title: message.notification!.title,
            body: message.notification!.body));
  });
  Future<void> _handler(RemoteMessage message) async {
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 1,
      channelKey: 'basic_channel',
      actionType: ActionType.Default,
      title: message.notification!.title,
      body: message.notification!.body,
    ),
  );
}
  FirebaseMessaging.onMessageOpenedApp.listen(_handler);


  runApp(MyApp());
}

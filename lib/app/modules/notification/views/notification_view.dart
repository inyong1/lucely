import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constant/app_color.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  NotificationView({Key? key}) : super(key: key);

  final _icons = [
    Icons.accessibility_outlined,
    Icons.account_balance_wallet_rounded,
    Icons.account_circle_outlined,
    Icons.adb_rounded,
    Icons.add_alert_sharp,
  ];

  final _titles = [
    "1 Hari menuju Webinar Mind",
    "Sering bimbang dalam membuat keputusan?",
  ];

  final _subtitles = [
    "klik untuk mengetahui cara mengikuti event",
    "[BOOKLUCE] Thinking, Fast, and Slow bisa bantu kamu ambik keputusan dengan bijak. Yuk baca bukunya",
  ];

  final DateFormat _dateFormat = DateFormat("d MMM");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.lightGrey,
      appBar: AppBar(
        title: const Text('Notifikasi'),
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 32)),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return _buildNotificationItem(context, index);
        },
        separatorBuilder: (context, index) {
          return Container(height: 1,color: AppColor.lightGrey);
        },
        itemCount: 200,
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, int index) {
    return ListTile(
    horizontalTitleGap: 0,
      leading: Icon(
        _icons[index % _icons.length],
        color: Colors.primaries[index % Colors.primaries.length],
      ),
      title: Text(_titles[index % _titles.length],style: const TextStyle(fontWeight: FontWeight.bold),),
      subtitle:  Text(_subtitles[index % _subtitles.length], style: const TextStyle(fontSize: 12),),
      trailing: Text(_dateFormat.format(DateTime.now().add((index * 30).days))),
    );
  }
}

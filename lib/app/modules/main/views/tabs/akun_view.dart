import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/app/data/appstate_service.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../routes/app_pages.dart';

class AkunView extends GetView<AppStateService> {
  const AkunView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Akun'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              color: AppColor.lightGrey,
              height: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                        child: Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage("assets/images/psikolog2.jpg"),
                              radius: 50,
                            ),
                            Obx(() {
                              return Text( controller.userObs.value?.name ?? "Akun Name Here",
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
                            }),
                            Obx(() {
                              return Text(controller.userObs.value?.email ?? "email@mail.com");
                            }),
                            24.height,
                            ListTile(
                              onTap: ()=>Get.toNamed(Routes.EDITAKUN),
                              leading: const Icon(Icons.mode_edit_outline_outlined,color: AppColor.blue),
                              title: const Text('Edit Akun'),
                              trailing: const Icon(Icons.chevron_right),
                            ),
                            ListTile(
                              onTap: ()=>Get.toNamed(Routes.FAQ),
                              leading: const Icon(Icons.info_outline,color: AppColor.blue),
                              title: const Text('FaQ dan Bantuan'),
                              trailing: const Icon(Icons.chevron_right),
                            ),
                            ListTile(
                              onTap: (){},
                              leading: const Icon(Icons.email_outlined,color: AppColor.blue),
                              title: const Text('Kontak Admin'),
                              trailing: const Icon(Icons.chevron_right),
                            ),
                            ListTile(
                              onTap: (){},
                              leading: const Icon(Icons.logout,color: AppColor.blue),
                              title: const Text('Keluar'),
                              trailing: const Icon(Icons.chevron_right),
                            ),

                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

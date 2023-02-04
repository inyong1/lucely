import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/kontak_admin_controller.dart';

class KontakAdminView extends BasePageView<KontakAdminController> {
  const KontakAdminView({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kontak Admin'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading:
              InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 24)),
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
                    Image.asset("assets/images/kontakadmin.png", width: 200),
                    24.height,
                    const Text(
                      "JAM KERJA : 08.00 - 17.00 WIB",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    24.height,
                    const Text(
                      "Silahkan menghubungi kami melalui",
                      style: TextStyle(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                    10.height,
                    const Text(
                      "E-mail  info@lucely.id",
                      style: TextStyle(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                    10.height,
                    const Text(
                      "WhatsApp - 08119843471",
                      style: TextStyle(color: AppColor.black),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

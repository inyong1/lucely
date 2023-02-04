import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../data/appstate_service.dart';
import '../../../routes/app_pages.dart';
import '../controllers/editakun_controller.dart';

class EditakunView extends BasePageView<EditakunController> {
  EditakunView({super.key});

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Akun'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: InkResponse(
              onTap: ()=>Get.back(),
              child: const Icon(Icons.chevron_left, size: 24)),
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
                            return Text(controller.userObs.value?.name ?? "Akun Name Here",
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
                          }),
                          Obx(() {
                            return Text(controller.userObs.value?.email ?? "email@mail.com");
                          }),
                          24.height,
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Nama Depan", hintText: "nama@website.com"),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          16.height,
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Nama Belakang", hintText: "nama@website.com"),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          16.height,
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "No WhatsApp", hintText: "nama@website.com"),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          16.height,
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Email", hintText: "nama@website.com"),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          16.height,
                          const Divider(height: 3, thickness: 1),
                          ListTile(
                            onTap: ()=>Get.toNamed(Routes.GANTISANDI),
                            leading: const Icon(Icons.lock, color: AppColor.blue),
                            title: Text('Ganti Kata Sandi'),
                          ),
                          const Divider(height: 3, thickness: 1),
                          32.height,
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: controller.onButtonSimpanClick,
                              child: const Text('Simpan'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/gantisandi_controller.dart';

class GantisandiView extends BasePageView<GantisandiController> {
   GantisandiView({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganti Kata Sandi'),
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
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFFFAE1B), width: 3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.vpn_key_sharp,
                          color: Color(0xFFFFAE1B),
                        ),
                      ),
                    ),
                    24.height,
                    const Text(
                      "Ganti Kata Sandi",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    32.height,
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(labelText: "Kata Sandi Lama")),
                    16.height,
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(labelText: "Kata Sandi Baru")),
                    16.height,


                    32.height,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.onButtonSimpanClick,
                        child: const Text('Ganti Kata Sandi'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

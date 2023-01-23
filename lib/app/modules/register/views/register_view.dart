import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/icons/ic_app.png", width: 50),
              ),
              16.height,
              Text(
                'Sign Up',
                style: context.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              ),
              16.height,
              const Text('Yu jadi lebih baik bersama lucely'),
              16.height,
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  final v = value ?? "";
                  if (v.isNotEmpty && !v.isEmail) {
                    return "Invalid email address";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              16.height,
              const TextField(
                decoration: InputDecoration(labelText: "Kata Sandi", hintText: "Min 8 karakter"),
              ),
              16.height,
              const TextField(
                decoration:
                    InputDecoration(labelText: "Konfirmasi Kata Sandi", hintText: "Min 8 karakter"),
              ),
              16.height,
              Row(
                children: [
                  Obx(() {
                    return Checkbox(
                      value: controller.agreeObs.value,
                      onChanged: (v) => controller.agreeObs.value = v ?? false,
                    );
                  }),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const WidgetSpan(child: Text('Saya setuju dengan')),
                          WidgetSpan(
                              child: Text(
                            'Term of Service',
                            style: TextStyle(color: context.theme.primaryColor),
                          )),
                          const WidgetSpan(child: Text(' ')),
                          const WidgetSpan(child: Text('dan')),
                          const WidgetSpan(child: Text(' ')),
                          WidgetSpan(
                              child: Text(
                            'Privacy Policy',
                            style: TextStyle(color: context.theme.primaryColor),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              8.height,
              Obx(() {
                return ElevatedButton(
                  onPressed: controller.agreeObs.value ? controller.onButtonBuatAkunClick : null,
                  child: const Text('Buat Akun'),
                );
              }),
              16.height,
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(child: Text('Sudah punya akun')),
                      const TextSpan(text: " "),
                      WidgetSpan(
                        child: Text(
                          'Masuk',
                          style: TextStyle(color: context.theme.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

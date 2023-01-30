import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/app/data/datastate.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends BasePageView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
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
                child: Image.asset("assets/icons/ic_app.png", width: 44),
              ),
              16.height,
              Text(
                'Login',
                style: context.textTheme.headlineMedium,
              ),
              16.height,
              const Text('Yuk jadi lebih baik bersama lucely'),
              36.height,
              Obx(() {
                return TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      errorText: controller.emailErrorObs.value,
                      hintText: "nama@website.com"
                  ),
                  controller: controller.emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                );
              }),
              22.height,
              Obx(() {
                final obscure = controller.passwordObscureObs.value;
                return TextField(
                  obscureText: obscure,
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    hintText: "Min. 8 karakter",
                    labelText: "Kata Sandi",
                    errorText: controller.passwordErrorObs.value,
                    suffixIcon: InkWell(
                      onTap: () => controller.passwordObscureObs.toggle(),
                      child: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                );
              }),
              5.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() {
                    return Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      value: controller.ingatkanObs.value,
                      onChanged: (v) => controller.ingatkanObs.value = v ?? false,
                    );
                  }),
                  Expanded(
                    child: Row(
                      children: const [
                        Text("Ingatkan saya"),
                        Spacer(),
                        Text("Lupa kata sandi?", style: TextStyle(color: AppColor.blue)),
                      ],
                    ),
                  ),
                ],
              ),
              36.height,
              Obx(() {
                if(controller.loginStateObs.value is DataStateLoading){
                  return Container(
                    height: 48,
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator(),
                  );
                }
                return ElevatedButton(
                  onPressed: controller.onButtonLoginClick,
                  child: const Text('Login'),
                );
              }),
              16.height,
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(child: Text('Belum mempunyai akun?')),
                      const TextSpan(text: " "),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () => Get.offAllNamed(Routes.REGISTER),
                          child: Text(
                            'Buat akun',
                            style: TextStyle(color: context.theme.primaryColor),
                          ),
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

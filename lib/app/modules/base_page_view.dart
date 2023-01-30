import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePageView<T> extends GetView<T> {
  const BasePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        FocusScope.of(context).unfocus(disposition: UnfocusDisposition.scope);
      },
      child: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context);
}

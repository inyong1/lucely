import 'package:flutter/material.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/app/modules/main/controllers/main_controller.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../constant/app_color.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Awal kesejahteraan mentalmu dimulai dari sini..",
              style: TextStyle(fontWeight: FontWeight.bold)),
          18.height,
          TextField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  borderSide: BorderSide(color: AppColor.blue),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                ),
                hintText: "Cari topik permasalahan"),
          ),
          Wrap(
            spacing: 10,
            children: const [
              Chip(
                label: Text('Kecemasan'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Everthingking'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Pendidikan'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Stress'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Keluarga'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Self-Development'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Self-love'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
              Chip(
                label: Text('Productivity'),
                backgroundColor: Colors.transparent,
                side: BorderSide(),
              ),
            ],
          ),
          16.height,
          Wrap(spacing: 10, children: const [
            Chip(
              label: Text('Konseling'),
              backgroundColor: Colors.transparent,
              side: BorderSide(),
            ),Chip(
              label: Text('Bookluce'),
              backgroundColor: Colors.transparent,
              side: BorderSide(),
            ),Chip(
              label: Text('Event'),
              backgroundColor: Colors.transparent,
              side: BorderSide(),
            ),Chip(
              label: Text('LuceGuide'),
              backgroundColor: Colors.transparent,
              side: BorderSide(),
            ),
          ]),
        ],
      ),
    ));
  }
}

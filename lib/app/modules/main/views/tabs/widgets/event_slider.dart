import 'package:flutter/material.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/extensions/num_ext.dart';

class EventSlider extends StatelessWidget {
  const EventSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text('Event Terdekat Diskusi langsung sekaligus bedah kasus bareng ahlinya'),
        ),
        SizedBox(
          height: 140,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            children: [
              _buildEventCard("assets/images/event3.png"),
              _buildEventCard("assets/images/event2.jpg"),
              _buildEventCard("assets/images/event1.jpeg"),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildEventCard(String assetImage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(assetImage, fit: BoxFit.fill)),
              16.width,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            minimumSize: const Size(0, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                          ),
                          child: const Text('Webinar', style: TextStyle(fontSize: 10)),
                        ),
                        8.width,
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            minimumSize: const Size(0, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                          ),
                          child: const Text('Self Development', style: TextStyle(fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                  4.height,
                  const Text(
                    "Menciptakan Mindfullness Dalam Akademik",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  10.height,
                  Row(
                    children: [
                      const Icon(Icons.calendar_month, color: Color(0xffFFAE1B), size: 15),
                      4.width,
                      const Text("Rabu, 27 Februari 2023", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Color(0xff50AFFE), size: 15),
                      4.width,
                      const Text("14:00 - 15:30", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

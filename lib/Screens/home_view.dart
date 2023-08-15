import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ucas_lecturer_following_up_application/Model/section.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<Section> items = [
    Section(0, "Automation 101", 30),
    Section(1, "Automation 102", 27)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: Text(AppLocalizations.of(context)!.all_sections_title),
          centerTitle: true),
      body: Column(
        children: [
          ListView.builder(
            itemBuilder: (context, position) {
              return Card(
                color: Colors.white,
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              style: const TextStyle(fontSize: 24),
                              items[position].sectionName),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          child: Text("${items[position].sectionId} Students"),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: items.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Color(int.parse("0xFF4e79f2")),
        icon: const Icon(Icons.add),
        label: Text(AppLocalizations.of(context)!.add_new_section_text),
      ),
    );
  }
}

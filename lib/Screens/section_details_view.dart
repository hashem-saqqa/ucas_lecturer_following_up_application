
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SectionDetailsView extends StatelessWidget {
  const SectionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        // TODO: change the text to the section name
        title: const Text("Section 101"),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Add Students', 'Add new Student'}.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              })
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("StudentNumber"),
                    Text("StudentName"),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: buttonColor.getColor(),
      //   label: Text(add_students.tr(context)),
      //   icon: const Icon(Icons.add),
      // ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Add new Student':
        break;
      case 'Add Students':
        break;
    }
  }

}

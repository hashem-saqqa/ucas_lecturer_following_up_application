
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery
                .sizeOf(context)
                .width,
            child: Image.asset(
                width: 150,
                height: 150,
                "assets/images/ucas_logo.png",
                fit: BoxFit.cover),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: DefaultTextStyle.merge(
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                child: Text(AppLocalizations.of(context)!.login_text)),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(),
                          hintText: AppLocalizations.of(context)!.staff_id_register),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(),
                          hintText: AppLocalizations.of(context)!.password_register),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(int.parse("0xFF4e79f2"))),
                        foregroundColor: MaterialStateProperty.all(Colors.white) ,
                      )
                      ,onPressed: ()
                  {},
                      child: Text(AppLocalizations.of(context)!.login_button_text)),
                  const SizedBox(
                    height: 50,
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}

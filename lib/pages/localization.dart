import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Localization extends StatefulWidget {
  const Localization({Key? key}) : super(key: key);

  static final String id = "localization";
  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("save").tr(),
            const SizedBox(height: 20,),
            const Text("load").tr(),
            const Text("submit").tr(),
            const SizedBox(height: 20,),
            const Text("great").tr(),
            const Text("perfect").tr(),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(const Locale('en','US'));
                }, child: const Text("English"),)),
                const SizedBox(width: 10,),
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(const Locale('ru','RU'));
                }, child: const Text("Russian"),)),
                const SizedBox(width: 10,),
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(const Locale('uz','UZ'));
                }, child: const Text("Uzbek"),)),
                const SizedBox(width: 10,),
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(const Locale('fr','FR'));
                }, child: const Text("French"),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

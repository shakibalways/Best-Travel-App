import 'package:best_travel_app/components/my_custom_search_field.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/icon/menu.png"),
                  Image.asset("assets/icon/notification.png"),
                ],
              ),
              const SizedBox(height: 30,),
              const MyCustomText(
                maxLines: 2,
                text: "Where Do You \nWant Go",fSize: 28,fWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20,),
              MyCustomSearchField(
                hText: "Search Your Trip",
                controller: controller,icon: Icons.search,),
            ],
          ),
        ),
      ),
    );
  }
}

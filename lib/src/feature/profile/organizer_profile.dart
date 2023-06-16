import 'package:event_hub/src/feature/profile/widgets/profile_display_details.dart';
import 'package:flutter/material.dart';

class OrganizerProfile extends StatelessWidget {
  const OrganizerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              SizedBox(
                height: 29,
              ),
              ProfileDisplayDetails(
                displayName: "Ashfak Sayem",
                followers: "350",
                following: "264",
              ),
              SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 150),
            Text(
              "Update Profile",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            SizedBox(height: 25),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: .circular(10),
                  bottomRight: .circular(10),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: .center,
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: .only(
                        topLeft: .circular(10),
                        bottomLeft: .circular(10),
                      ),
                    ),
                    child: Text("Photo"),
                  ),
                  SizedBox(width: 5),
                  Expanded(child: Text("Upload Image")),
                ],
              ),
            ),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'First Name')),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Last Name')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Mobile')),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Password')),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}

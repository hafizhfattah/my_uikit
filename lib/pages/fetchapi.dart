// ignore_for_file: file_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class FetchingApi extends StatefulWidget {
  const FetchingApi({super.key});

  @override
  State<FetchingApi> createState() => _FetchingApiState();
}

class _FetchingApiState extends State<FetchingApi> {
  final font = GoogleFonts.montserrat(
    letterSpacing: 1,
    fontWeight: FontWeight.w400,
  );

  bool isLoading = false;

  List<dynamic> _user = [];

  //Methode GetAPI
  void getUsers() async {
    //Change The Loading State
    setState(() {
      isLoading = true;
    });
    //Declaration Base Url
    final response = await http.get(
      Uri.parse("https://reqres.in/api/users?page=2"),
    );
    //Response The Code
    if (response.statusCode == 200) {
      final resData = jsonDecode(response.body);
      //Make Sure Not Empty
      if (resData["data"].isNotEmpty) {
        //Changing State
        setState(() {
          _user = resData['data'];
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _user.isNotEmpty
          ? ListView.builder(
              itemCount: _user.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                //Fetching API
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: NetworkImage(_user[index]["avatar"] ??
                          "https://i.ibb.co/S32HNjD/no-image.jpg"),
                    ),
                    title: Text(
                      _user[index]["first_name"] ?? "Empty",
                      style: font,
                    ),
                    subtitle: Text(
                      _user[index]["email"] ?? "Empty",
                      style: font,
                    ),
                  ),
                );
              },
            )
          : Center(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(64.0),
                        ),
                      ),
                      onPressed: getUsers,
                      child: Text(
                        "Get The Data",
                        style: font,
                      ),
                    ),
            ),
    );
  }
}

import 'package:flutter/material.dart';

class DraggablePage extends StatelessWidget {
  const DraggablePage({super.key});

  @override
  Widget build(BuildContext context) {
    const a = Color.fromRGBO(66, 66, 66, 1);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(color: Colors.cyan),
        DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(12),
                controller: scrollController,
                itemCount: 100,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return const Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: Text("Jessica Doe"),
                      subtitle: Text("Programmer"),
                    ),
                  );
                },
              ),
            );
          },
        )
      ]),
    );
  }
}

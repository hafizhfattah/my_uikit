import 'package:flutter/material.dart';

class DraggablePage extends StatelessWidget {
  const DraggablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          color: Colors.white,
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(12),
                controller: scrollController,
                itemCount: 100,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
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

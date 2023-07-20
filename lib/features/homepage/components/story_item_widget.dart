import 'package:flutter/material.dart';

class StoryItemWidget extends StatelessWidget {
  const StoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.grey.shade300,
      ),
      height: 100,
      width: 120,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 8,
              child: Text(
                "BBC News",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}

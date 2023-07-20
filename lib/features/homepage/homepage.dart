import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/story_item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo/facebook.png",
          height: 32,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Icon(FontAwesomeIcons.plus, color: Colors.black),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.black),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child:
                Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/16122334/pexels-photo-16122334/free-photo-of-man-standing-on-a-deck-near-a-bridge-with-the-view-of-istanbul-across-the-bosphorus-strait.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text("What's on your mind"),
                ),
                Icon(
                  FontAwesomeIcons.image,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Divider(
                  thickness: 10,
                ),
                TabBar(
                  controller: tabController,
                  unselectedLabelStyle: TextStyle(fontSize: 16),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Stories",
                    ),
                    Tab(
                      text: "Reels",
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child:
                                      Stack(clipBehavior: Clip.none, children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Create\nStory",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -24,
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CircleAvatar(
                                            child: Icon(
                                              FontAwesomeIcons.plus,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ListView.separated(
                            itemBuilder: (context, index) => StoryItemWidget(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                          )
                        ],
                      ),
                      Text("Reels"),
                    ],
                  ),
                ),
                Divider(
                  thickness: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "John Mobbin",
                                        children: [
                                          TextSpan(
                                              text: " added a new reel",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              )),
                                          TextSpan(
                                            text: " reel",
                                          )
                                        ],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                Row(
                                  children: [
                                    Text(
                                      "Just Now",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.music,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Just Now",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.peopleGroup,
                                      size: 14,
                                    )
                                  ],
                                )
                              ],
                            )),
                            Icon(FontAwesomeIcons.ellipsis)
                          ],
                        ),
                      ),
                      Image.network(
                        "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        children: [
                          SocialHandler(
                            icon: FontAwesomeIcons.thumbsUp,
                            text: "Like",
                          ),
                          SocialHandler(
                            icon: FontAwesomeIcons.message,
                            text: "Comment",
                          ),
                          SocialHandler(
                            icon: FontAwesomeIcons.share,
                            text: "Share",
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialHandler extends StatelessWidget {
  const SocialHandler({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 8,
          ),
          Text(text)
        ],
      ),
    );
  }
}

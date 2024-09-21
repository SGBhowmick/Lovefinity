import 'package:flutter/material.dart';
import 'package:funapp/cardview.dart';
import 'package:funapp/createpost.dart';
import 'package:funapp/friendcards.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int switcherIndex1 = 0;
  int counter = 4;
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Colors.white,
            const Color.fromARGB(255, 255, 247, 250),
          ],
              stops: [
            0.0,
            1.0
          ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          titleSpacing: 0,
          surfaceTintColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icons/iconhead.png",
                  fit: BoxFit.fill,
                  color: Colors.pink,
                  height: 70,
                ),
                switcherIndex1 == 0
                    ? Padding(
                        padding: const EdgeInsets.only(
                            right: 18.0, left: 8.0, top: 8.0, bottom: 8.0),
                        child: CircleAvatar(
                          radius: 27,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreatePost(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.add,
                                color: Colors.pink,
                                size: 32,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          backgroundColor:
                              const Color.fromRGBO(247, 209, 222, 1),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                            right: 18.0, left: 8.0, top: 8.0, bottom: 8.0),
                        child: Wrap(children: [
                          CircleAvatar(
                              radius: 27,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CardDetails(),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 25,
                                  child: ImageIcon(
                                      AssetImage("assets/icons/heart.png"),
                                      color: Colors.pink),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(247, 209, 222, 1)),
                          SizedBox(width: 10),
                          CircleAvatar(
                              radius: 27,
                              child: GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 25,
                                  child: ImageIcon(
                                    AssetImage("assets/icons/settings.png"),
                                    color: Colors.pink,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(247, 209, 222, 1)),
                        ]),
                      )
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              expandedHeight: switcherIndex1 == 0 ? 180.0 : 0,
              foregroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.parallax,
                  expandedTitleScale: 1,
                  titlePadding: EdgeInsets.all(1),
                  title: Container(
                    height: 65,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SlideSwitcher(
                        containerColor:
                            const Color.fromARGB(255, 255, 241, 246),
                        children: [
                          Text(
                            'Make Friends',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Search Partners',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                        onSelect: (index) =>
                            setState(() => switcherIndex1 = index),
                        containerHeight: 50,
                        containerWight: 380,
                        containerBorderRadius: 18,
                        containerBorder: Border.all(
                            color: const Color.fromARGB(255, 255, 241, 246),
                            width: 5),
                      ),
                    ),
                  ),
                  background: switcherIndex1 == 0
                      ? Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.0, left: 10),
                              child: Stories(
                                spaceBetweenStories: 10,
                                circleRadius: 30,
                                circlePadding: 4,
                                borderThickness: 2.5,
                                storyCircleTextStyle:
                                    TextStyle(fontWeight: FontWeight.w500),
                                storyItemList: [
                                  StoryItem(
                                    name: "My Story",
                                    thumbnail: NetworkImage(
                                        'https://i.imgur.com/sjLMNDM.png'),
                                    stories: [
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                "https://wallpaperaccess.com/full/16568.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  StoryItem(
                                    name: "David John",
                                    thumbnail: AssetImage(
                                        "assets/images/davidjohn.png"),
                                    stories: [
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://visaagentdubai.com/wp-content/uploads/2024/03/2149153255-1.webp'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Scaffold(
                                        backgroundColor: Colors.black,
                                        body: Center(
                                          child: Text(
                                            "That's it, Folks!",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  StoryItem(
                                    name: "Selena",
                                    thumbnail:
                                        AssetImage("assets/images/selena.png"),
                                    stories: [
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://visaagentdubai.com/wp-content/uploads/2024/03/2149153255-1.webp'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Scaffold(
                                        backgroundColor: Colors.black,
                                        body: Center(
                                          child: Text(
                                            "That's it, Folks!",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  StoryItem(
                                    name: "Clara",
                                    thumbnail:
                                        AssetImage("assets/images/clara.png"),
                                    stories: [
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://visaagentdubai.com/wp-content/uploads/2024/03/2149153255-1.webp'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Scaffold(
                                        backgroundColor: Colors.black,
                                        body: Center(
                                          child: Text(
                                            "That's it, Folks!",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  StoryItem(
                                    name: "Fabian",
                                    thumbnail:
                                        AssetImage("assets/images/fabian.png"),
                                    stories: [
                                      Scaffold(
                                        body: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://visaagentdubai.com/wp-content/uploads/2024/03/2149153255-1.webp'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Scaffold(
                                        backgroundColor: Colors.black,
                                        body: Center(
                                          child: Text(
                                            "That's it, Folks!",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : null),
            ),
            (switcherIndex1 == 0)
                ? Friendcards().build(context)
                : SliverToBoxAdapter(
                    child: SizedBox(
                    height: MediaQuery.of(context).size.height * .64,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SwipeableCardsSection(
                          cardController: _cardController,
                          context: context,
                          items: [
                            CardView(
                              text: "James Colton, 20",
                              city: "HANOVER",
                              image:
                                  "https://img.freepik.com/free-photo/close-up-man-smiling-nature_23-2150771115.jpg",
                            ),
                            CardView(
                              text: "liona seb, 23",
                              city: "NEWYORK",
                              image:
                                  "https://images.pexels.com/photos/12105771/pexels-photo-12105771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            ),
                            CardView(
                              text: "Maria francis, 25",
                              city: "LONDON",
                              image:
                                  "https://burst.shopifycdn.com/photos/woman-in-a-blue-suit-smiles-and-poses-for-the-camera.jpg?width=1000&format=pjpg&exif=0&iptc=0",
                            ),
                          ],
                          onCardSwiped: (dir, index, widget) {
                            _cardController
                                .addItem(CardView(text: "Next card"));
                          },
                          enableSwipeUp: true,
                          enableSwipeDown: true,
                        )
                      ],
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}

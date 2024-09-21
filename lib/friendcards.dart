import 'package:flutter/material.dart';

class Friendcards {
  final List<Map<String, String>> friends = [
    {
      "icon":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFECM5AEB_Hghp5VdZFzkKbvb1k9B_juJ5Ag&s",
      "postname": "Miranda Kehlani",
      "city": "STUTTGART",
      "imagebackground":
          "https://toppng.com/uploads/preview/road-mountains-landscape-turn-asphalt-cars-115699846172to1rku54l.jpg"
    },
    {
      "icon":
          "https://img.freepik.com/premium-photo/profile-picture-social-media-generative-ai_804788-72715.jpg",
      "postname": "Rachel thomson",
      "city": "LONDON",
      "imagebackground":
          "https://img.freepik.com/free-photo/view-soccer-shoes-field-grass_23-2150887535.jpg"
    },
    {
      "icon":
          "https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/8f706226-0b67-41ea-b84e-a7add4ea0658/fadf9214-bad0-41cb-8318-272d81dfe466.png",
      "postname": "Ryan Reynolds",
      "city": "CALIFORNIA",
      "imagebackground":
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/de70e32a-639d-4aec-9894-c001c53e9875/da5t6xa-a95a8639-343f-4b08-9e04-8281815d1153.jpg/v1/fill/w_1131,h_707,q_70,strp/city_street_night_background_wallpaper_by_emre0614_da5t6xa-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTYwMCIsInBhdGgiOiJcL2ZcL2RlNzBlMzJhLTYzOWQtNGFlYy05ODk0LWMwMDFjNTNlOTg3NVwvZGE1dDZ4YS1hOTVhODYzOS0zNDNmLTRiMDgtOWUwNC04MjgxODE1ZDExNTMuanBnIiwid2lkdGgiOiI8PTI1NjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.0tzuEAa3eaHSIwV8obIT6pUbuSO3TBymc-QQpb7sZD4"
    },
    {
      "icon":
          "https://cdn.pixabay.com/photo/2023/01/28/20/24/ai-generated-7751691_960_720.jpg",
      "postname": "Steve Smith",
      "city": "FINLAND",
      "imagebackground":
          "https://img.freepik.com/premium-photo/stones-building-rubble-as-background_811250-4903.jpg"
    },
    {
      "icon":
          "https://cgfaces.com/collection/preview/e736cbc2-5359-4f54-a94a-b668fbd9e93a.jpg",
      "postname": "Jacob Geo",
      "city": "NEW JERSY",
      "imagebackground":
          "https://st4.depositphotos.com/34283992/37989/i/450/depositphotos_379896260-stock-photo-green-branches-background-blurred-road.jpg"
    },
    {
      "icon":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd2uEcmvgTBoU193mIqaDSqhAfVrG8NnOUAA&s",
      "postname": "Maya Ryes",
      "city": "QUEENS",
      "imagebackground":
          "https://i.pinimg.com/736x/39/7c/5b/397c5befbd09f31d027f478f9e8c6f0c.jpg"
    },
    {
      "icon":
          "https://www.profilebakery.com/wp-content/uploads/2024/05/Profile-Picture.jpeg",
      "postname": "Britny Samuel",
      "city": "AMSTERDAM",
      "imagebackground":
          "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/w/o/WOPA160517_D056-resized.jpg?crop=864%2C0%2C1728%2C2304&wid=600&hei=800&scl=2.88"
    },
    {
      "icon":
          "https://imgcdn.stablediffusionweb.com/2024/6/10/2f5ae05a-9f79-4a75-8f37-ed8ff1b68132.jpg",
      "postname": "Aloshy Stan",
      "city": "NEW YORK",
      "imagebackground":
          "https://www.dance-style.es/wp-content/uploads/2022/01/como-preparar-una-coreografia-de-baile-urbano.jpeg"
    },
    {
      "icon":
          "https://r2.fluxaiimagegenerator.com/images/5c60ab39-8e88-4407-9b87-9f44db941fd1.jpg",
      "postname": "Pablo Suariz",
      "city": "VENICE",
      "imagebackground":
          "https://c.ndtvimg.com/2022-01/eaptupdg_car_625x300_07_January_22.jpg"
    },
    {
      "icon":
          "https://img.freepik.com/premium-photo/serious-man-profile-view-as-he-studies-himself-mirror-generative-ai_94628-11038.jpg",
      "postname": "Richard Smitt",
      "city": "SCOTLAND",
      "imagebackground":
          "https://wanderingwheatleys.com/wp-content/uploads/2021/09/best-castle-hotels-in-england-header-1.jpg"
    },
  ];

  String? selectedfriends;

  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final friend = friends[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetails(
                    name: friend["postname"],
                    city: friend["city"],
                    icon: friend["icon"],
                    imagebackground: friend["imagebackground"],
                  ),
                ),
              );
            },
            child: Container(
              height: 390,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.pink,
                image: DecorationImage(
                  image: NetworkImage(friend["imagebackground"]!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage(friend["icon"] ?? "nun"),
                        ),
                        SizedBox(width: 10),
                        Text(
                          friend["postname"] ?? "Unknown",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
        childCount: friends.length,
      ),
    );
  }
}

class CardDetails extends StatefulWidget {
  const CardDetails(
      {super.key, this.name, this.city, this.icon, this.imagebackground});
  final String? name;
  final String? city;
  final String? icon;
  final String? imagebackground;

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool _isToggled = false;

  void _toggleColor() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: Row(
            children: [
              SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: .10,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          title: Container(
            height: 42,
            width: 92,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 118, 164),
                borderRadius: BorderRadius.circular(23)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ImageIcon(AssetImage("assets/icons/music.png")),
              Text("Music",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(width: 10)
            ]),
          ),
          centerTitle: true,
          toolbarHeight: 80,
          actions: [
            IconButton(
              onPressed: _toggleColor,
              icon: Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: .10,
                    ),
                  ],
                  color: _isToggled ? Colors.pinkAccent : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: _isToggled ? Colors.white : Colors.black,
                    size: 18,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 4.0, right: 18, left: 18, bottom: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                      image: DecorationImage(
                          image: NetworkImage(widget.imagebackground!),
                          fit: BoxFit.cover)),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 20, bottom: 8.0, right: 20),
                  child: Text(
                    "Let's make some memories!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage(widget.icon!),
                          ),
                          SizedBox(width: 10),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.name!,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: const Color.fromARGB(
                                          255, 239, 51, 114),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  widget.city!,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                )
                              ]),
                        ],
                      ),
                      Container(
                        height: 38,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 252, 6, 92),
                            borderRadius: BorderRadius.circular(23)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 8),
                              ImageIcon(AssetImage("assets/icons/person.png"),
                                  size: 14, color: Colors.white),
                              SizedBox(width: 10),
                              Text("View Profile",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(width: 10)
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                  child: Text(
                    "Hey I am ${widget.name}, I'm here to explore my wildest fantasies. lets create beautiful and unforgettable Memories.\n \nUntil you step into the unknown, you don't know what you're made of.  Until you step into the unknown, you don't know what you're made of. Until you step into the unknown, you don't know what you're made of anything",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

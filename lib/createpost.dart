import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  List<Map<String, String>> items = [
    {"icon": "assets/icons/mountain.png", "label": "Mountains"},
    {"icon": "assets/icons/shipping.png", "label": "Ships"},
    {"icon": "assets/icons/sport-car.png", "label": "Cars"},
    {"icon": "assets/icons/desert.png", "label": "Desert"},
    {"icon": "assets/icons/gardening.png", "label": "Gardening"},
    {"icon": "assets/icons/skyscraper.png", "label": "City"},
    {"icon": "assets/icons/waves.png", "label": "Ocean"},
    {"icon": "assets/icons/repair.png", "label": "Construction"},
    {"icon": "assets/icons/river.png", "label": "Rivers"},
  ];

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 38,
            width: 38,
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
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
        ),
        title: const Text(
          "Create a post",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload a cover image",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink.shade100,
                        radius: 20,
                        child: Icon(
                          Icons.upload_file_outlined,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload",
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "image",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Enter Title",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Let's make some memories",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Post content",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: contentController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText:
                          "Hey, I'm Miranda Kehlani. I'm here to explore my wildest fantasies. Let's create beautiful and unforgettable memories.",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Select tags",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width:
                    double.infinity, // Make sure the container takes full width
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 18),
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.pink),
                    items: items.map((item) {
                      return DropdownMenuItem<String>(
                        alignment: AlignmentDirectional.center,
                        value: item['label'],
                        child: Row(
                          children: [
                            Image.asset(
                              item['icon']!,
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(width: 8),
                            Text(item['label']!,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      );
                    }).toList(),
                    value: selectedItem,
                    onChanged: (value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    hint: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Select a tag"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 26, left: 26),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 225, 16, 85)),
                        onPressed: () {},
                        child: Text("Publish",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

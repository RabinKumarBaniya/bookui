import 'package:bookui/models/book.dart';
import 'package:bookui/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F5F9),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFFF2F5F9),
            title: Text(
              'Hi Nibor,',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
                size: 27,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications,
                color: Colors.black,
                size: 27,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/images/book.webp',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 210,
            width: double.infinity,
            color: Colors.white,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return InkWell(
                    onTap: () {
                      Get.to(() => DetailPage(book),
                          transition: Transition.zoom);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(book.imageUrl)),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            width: 200,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(book.title),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  book.summary,
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(book.ratingStar),
                                    Text(book.genre),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 10, left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You may also like',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 2),
                            height: 200,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(book.imageUrl))),
                        Text(book.title),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          book.genre,
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

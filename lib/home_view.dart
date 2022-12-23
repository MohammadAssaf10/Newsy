import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xffEC3687),
          title: const Text(
            "HOME",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontFamily: "JosefinSans-Bold",
                fontSize: 25.0),
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarDividerColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xffBE78F8),
                          Color(0xffCA67DA),
                          Color(0xffD753B8),
                          Color(0xffEC3687)
                        ],
                        begin: AlignmentDirectional.bottomStart,
                        end: AlignmentDirectional.topStart),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 20,
                  child: Container(
                    alignment: Alignment.center,
                    height: 45.0,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/search.png"),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Color(0xff707070)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/micro.png"),
                      ),
                    ]),
                  ),
                ),
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.0,
                  indicatorColor: Colors.white,
                  padding: EdgeInsets.only(top: 116.0),
                  tabs: [
                    Text(
                      "POPULAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "JosefinSans-SemiBold",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "LATEST",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "JosefinSans-SemiBold",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "TRENDING",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: "JosefinSans-SemiBold",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 555.0,
              child: Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: TabBarView(
                  children: [
                    Text(
                      "POPULAR",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "LATEST",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "TRENDING",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

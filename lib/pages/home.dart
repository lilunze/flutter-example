import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class HomePageWidget extends StatefulWidget{
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageWidgetState();
  }
}

class HomePageWidgetState extends State<HomePageWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
            title: const Text('全棉时代',style: TextStyle(fontSize: 16,color: Color.fromARGB(200, 0, 0, 0))),
            centerTitle: true,
            // 背景颜色
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon:const Icon(Icons.search,color: Color.fromARGB(200, 0, 0, 0),),
                onPressed: (){

                },
              ),
            ]
        ),
        preferredSize: const Size.fromHeight(50.0)
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return Image.asset(
                        "images/banner_0${(index + 1).toString()}.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill
                    );
                  },
                  itemCount: 4,
                  pagination: const SwiperPagination(),
                  duration: 1000,
                  autoplay: true,
                  // control: const SwiperControl(),
                ),
              ),
              Image.asset("images/nav.jpg"),
              Image.asset("images/rec_01.jpg"),
              Image.asset("images/rec_02.png"),
              Image.asset("images/rec_03.png"),
              Container(
                padding: const EdgeInsets.only(top: 0, bottom: 10),
                child: const Center(
                  child: Text(
                      "~ 已经到底啦 ~",
                      style: TextStyle(fontSize: 12,color: Color.fromARGB(200, 0, 0, 0))
                  ),
                ),
              ),

            ]
        )
      )

    );
  }
}

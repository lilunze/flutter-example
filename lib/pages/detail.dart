import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
              title: const Text('我的',style: TextStyle(fontSize: 16,color: Color.fromARGB(200, 0, 0, 0))),
              centerTitle: true,
              // 背景颜色
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon:const Icon(Icons.settings,color: Color.fromARGB(200, 0, 0, 0),),
                  onPressed: (){

                  },
                ),
              ]
          ),
          preferredSize: const Size.fromHeight(50.0)
      ),
      body: SingleChildScrollView(),
    );
  }

}
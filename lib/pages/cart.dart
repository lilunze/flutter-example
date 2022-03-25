import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../utils/storage.dart';

class CartPageWidget extends StatefulWidget{
  const CartPageWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CartPageWidgetState();
  }
}

class CartPageWidgetState extends State<CartPageWidget>{
  List dataList = [];

  void getHttp() async {
    try {
      var response = await Dio().get('https://file.lifeipt.top/api/home');
      if (kDebugMode) {
        print(response);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttp();
    dataList = [{
      'name': "婴儿海洋印象礼盒",
      'desc': "商品描述",
      'cover': '封面'
    },{
      'name': "商品名称",
      'desc': "商品描述",
      'cover': '封面'
    }];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
              title: const Text('购物车',style: TextStyle(fontSize: 16,color: Color.fromARGB(200, 0, 0, 0))),
              centerTitle: true,
              // 背景颜色
              backgroundColor: Colors.white,
          ),
          preferredSize: const Size.fromHeight(50.0)
      ),
      body: Stack(
        children: [
          buildList(),
          Positioned(
              left: 0,
              right: 0,
              bottom:0,
              child: Container(
                height: 60.0,
                decoration: const BoxDecoration(color: Color.fromARGB(60, 158, 158, 156)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Stack(
                    children: [
                      const Align(
                        alignment:FractionalOffset.centerLeft,
                        child: Text('支付金额：￥100',style: TextStyle(fontSize: 16,color: Color.fromARGB(200, 0, 0, 0))),
                      ),
                      Align(
                        alignment:FractionalOffset.topRight,
                        child: MaterialButton(
                          height: 60,
                          color: Colors.blue,
                          textColor: Colors.white,
                          onPressed: () {

                          },
                          child: const Text('去支付'),
                        ),
                      ),
                    ],
                  ),
                )
              )
          )
        ],
      )


    );
  }

  Widget buildList() {
    List<Widget> tiles = [];
    Widget content;
    for(var item in dataList) {
      tiles.add(
        itemWidget(),
      );
    }
    content = Column(
        children: tiles
    );
    return content;
  }

  Widget itemWidget() {
    bool isChecked = false;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12,0,12,0),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0,0,0,12),
        height: 120,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,12,0,12),
          child: Row(
            children: [
              Checkbox(
                  value: isChecked,
                  activeColor: Colors.blue,
                  onChanged: (val){
                    if (kDebugMode) {
                      print(val);

                    }isChecked = val!;
                    // ...
                  }
              ),
              Image.asset('images/product0001.jpg'),
              Column(
                children: [
                  const Text(
                      '婴儿海洋印象礼盒',
                      style: TextStyle(fontSize: 16,color: Color.fromARGB(200, 0, 0, 0)),
                      textAlign: TextAlign.left
                  ),
                  const Text('海洋蓝，浴巾：80cm x 80cm'),
                  Row(
                    children: const [
                      Text('￥380'),
                      Text('x2')
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }

}





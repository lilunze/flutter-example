import 'package:flutter/material.dart';

class DashboardPageWidget extends StatefulWidget{
  const DashboardPageWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DashboardPageWidgetState();
  }
}

class DashboardPageWidgetState extends State<DashboardPageWidget>{
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
                    // Navigator.pushNamed(context, "RouterDemoPage2");
                    Navigator.of(context).pushNamed('/pages/login');
                  },
                ),
              ]
          ),
          preferredSize: const Size.fromHeight(50.0)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                 color: Color.fromARGB(255, 15, 189, 163),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                                "images/avatar.jpg",
                                width: 80,
                                height: 80,
                                fit: BoxFit.fill
                            )
                        ),
                        Container(
                          margin:const EdgeInsets.fromLTRB(10,0,0,0),
                          child: const Text(
                              '卡西莫多cc',
                              style: TextStyle(fontSize: 18,color: Colors.white)
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12,0,12,0),
                    child: Container(
                      height: 88,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 242, 223, 189),
                            Color.fromARGB(255, 228, 195, 133),
                          ],
                        ),
                      ),
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 4,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/icon_01.png",
                                    width: 26,
                                    height: 26,
                                    fit: BoxFit.fill
                                ),
                                const Text("积分游乐园",textAlign: TextAlign.center)
                              ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "images/icon_02.png",
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.fill
                              ),
                              const Text("生日福利",textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "images/icon_03.png",
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.fill
                              ),
                              const Text("积分兑换",textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "images/icon_04.png",
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.fill
                              ),
                              const Text("拆盲盒",textAlign: TextAlign.center)
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  // GridView(gridDelegate: null,)
                ],
              ),
            ),
            //我的订单
            Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,20),
              child: Container(
                height: 140,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.white,
                  color: Color.fromARGB(60, 158, 158, 156)
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10,10,0,0),
                          child: Text("我的订单",textAlign: TextAlign.left, style: TextStyle(fontSize: 18,)),
                        )

                      ],
                    ),

                    SizedBox(
                      height: 100,
                      child: GridView.count(
                          scrollDirection: Axis.vertical,
                          crossAxisCount: 4,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/icon_05.png",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.fill
                                ),
                                const Text("待付款",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/icon_06.png",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.fill
                                ),
                                const Text("待收货",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/icon_07.png",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.fill
                                ),
                                const Text("待评价",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "images/icon_08.png",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.fill
                                ),
                                const Text("全部订单",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                              ],
                            )
                          ]
                      )
                    )
                  ],
                ),

              ),
            ),
          //  我的活动
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,20),
              child: Container(
                height: 140,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // color: Colors.white,
                    color: Color.fromARGB(60, 158, 158, 156)
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10,10,0,0),
                          child: Text("我的活动",textAlign: TextAlign.left, style: TextStyle(fontSize: 18,)),
                        )

                      ],
                    ),

                    SizedBox(
                        height: 100,
                        child: GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 4,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "images/icon_09.png",
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill
                                  ),
                                  const Text("签到",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "images/icon_10.png",
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill
                                  ),
                                  const Text("天天种棉花",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "images/icon_11.png",
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill
                                  ),
                                  const Text("我的拼团",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      "images/icon_12.png",
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill
                                  ),
                                  const Text("领券中心",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,))
                                ],
                              )
                            ]
                        )
                    )
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
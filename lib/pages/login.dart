import 'package:flutter/material.dart';
import '../fonts/icon_font.dart';

class PageLogin extends StatelessWidget{
  const PageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageLoginWidget()
    );
  }

}

class PageLoginWidget extends StatefulWidget {
  const PageLoginWidget({Key? key}) : super(key: key);

  @override
  State<PageLoginWidget> createState() => _PageLoginWidget();
}

class _PageLoginWidget extends State<PageLoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //logo 组件
    Widget sloganWidget = Container(
      alignment: Alignment.topCenter,
      child: Image.asset('images/slogan.png'),
    );

    //表单组件
    Widget formWidget = Container(
      margin: const EdgeInsets.only(left: 20,right: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.transparent
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "用户名",
                hintText: '请输入用户名',
                prefixIcon: Icon(Icons.person),

              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return '请输入用户名';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "密码",
                hintText: '请输入密码',
                prefixIcon: Icon(Icons.lock),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return '请输入密码';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0,10,0,0),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // 表单校验
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: const Text('登陆'),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(BeveledRectangleBorder(borderRadius: BorderRadius.circular(4))),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );

    //忘记密码 快速注册
    Widget operateWidget = Container(
      margin: const EdgeInsets.only(right: 20,left: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Text(
            "忘记密码?",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 16.0,
              ),
            ),
            //忘记密码按钮，点击执行事件
            onPressed: (){

            },
          ),
          TextButton(
            child: Text(
              "快速注册",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 16.0,
              ),
            ),
            //忘记密码按钮，点击执行事件
            onPressed: (){

            },
          ),
        ],
      ),
    );

    //第三方登陆
    Widget otherLoginWidget = Padding(
      padding: const EdgeInsets.fromLTRB(16,30,16,0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconFont(IconNames.weixin, size: 34),
            IconFont(IconNames.weibo, size: 34),
            IconFont(IconNames.qq, size: 34),
            IconFont(IconNames.github, size: 34),
          ]
      )
    );

    return GestureDetector(
      onTap: () {
        //  点击空白区域回收键盘
      },
      child: ListView(
        children: [
          const SizedBox(height: 80),
          sloganWidget,
          const SizedBox(height: 50),
          formWidget,
          operateWidget,
          otherLoginWidget
        ],
      ),
    );




  }

}

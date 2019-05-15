import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _uNmeCtrl = new TextEditingController();
    TextEditingController _pwdCtrl = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text('new route'),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Form(
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    controller: _uNmeCtrl,
                    decoration: InputDecoration(
                        labelText: 'name',
                        hintText: '用户名或邮箱',
                        icon: Icon(Icons.person)),
                    validator: (v) {
                      return v.trim().length > 0 ? null : '用户名不能为空';
                    },
                  ),
                  TextFormField(
                      controller: _pwdCtrl,
                      decoration: InputDecoration(
                          labelText: "密码",
                          hintText: "您的登录密码",
                          icon: Icon(Icons.lock)),
                      obscureText: true,
                      //校验密码
                      validator: (v) {
                        return v.trim().length > 5 ? null : "密码不能少于6位";
                      }),
                  Padding(
                    padding: EdgeInsets.only(top: 28),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                              padding: EdgeInsets.all(15),
                              child: Text('login'),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {}),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(MyApp());

//ここのファイルに全部書くのかな？

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final wordPair = WordPair.random();


    //このメソッドでUIのデザインをする

    return MaterialApp(
        //ここでAndroidManifestに書いてたようなこと
        title: 'Welcome to Flutter',

        //ここからは画面に表示されるlayoutについて
        home: Scaffold(

          //ここで出てくるTextとかCenterはクラスっぽい

          //childとかは変数名だけど何にするかは変えられない感じかなぁ

          appBar: AppBar(
            title: Text("Welcome to Flutter"),
          ),
          body: Center(
            child: Text(wordPair.asPascalCase),
            //このwordはランダムに出てくる
          ),


        ));
  }
}

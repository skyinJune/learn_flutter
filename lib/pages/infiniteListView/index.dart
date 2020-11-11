import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListView extends StatefulWidget {
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = '##loading##';
  List wordList = <String> [loadingTag];

  void getMoreData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        wordList.insertAll(wordList.length -1,
          generateWordPairs().take(20).map((item) => item.asPascalCase).toList()
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('infinite listview'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(title: Text('标题')),
          Expanded(
            child: ListView.separated(
              itemCount: wordList.length,
              itemBuilder: (BuildContext context, int index) {
                if (wordList[index] == loadingTag) {
                  if (wordList.length - 1 < 101) {
                    getMoreData();
                    return Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2,),
                      ),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      child: Text(
                          '已经到底啦~',
                          style: TextStyle(color: Colors.grey)
                      ),
                    );
                  }
                } else {
                  return ListTile(title: Text(wordList[index]));
                }
              },
              separatorBuilder: (context, index) => Divider(height: .0),
            ),
          )
        ],
      )
    );
  }
}
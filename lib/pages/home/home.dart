import 'package:com/pages/home/listView.dart';
import 'package:com/pages/http/getData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:oktoast/oktoast.dart';
class homePage1 extends StatefulWidget
{
  @override
  homePage createState() => homePage();
}

class homePage extends State<homePage1>
{
  int count;
  initState() {
    super.initState();
    setState(() {
      count = 0;
      print('我已经刷新');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisSize: MainAxisSize.max,
        children:<Widget>[
        Container(
          child:AspectRatio(
          aspectRatio: 16/9,
            child: OKToast(
             child: Swiper(
              onTap:(index)
              {
                showToast(swiperData[index]['content']);
              },
              outer: false,
              itemBuilder: (BuildContext context,int index) {
                count = index;
                return Image.network(swiperData[index]['pic_url'],
                fit: BoxFit.fill,);
              },
              itemCount: swiperData.length,
            pagination: SwiperPagination(),
            control: SwiperControl(),
            loop: true,
            autoplay: false,
        ),
        )
          )
      ),
        Divider(height: 20.0,color: Colors.grey,
          thickness: 1.0,),
        Expanded(
          child:Container(
          alignment: Alignment.bottomCenter,
            child:listView(),
        )
        )
    ]
    )
    );
  }
}

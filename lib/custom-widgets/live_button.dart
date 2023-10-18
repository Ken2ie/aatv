import 'package:aatvmobilevsn/pages/livefeed/liveFeedRadio.dart';
import 'package:aatvmobilevsn/pages/livefeed/livefeedVideo.dart';
import 'package:flutter/material.dart';

class LiveButton extends StatefulWidget {
  const LiveButton({super.key});

  @override
  State<LiveButton> createState() => _LiveButtonState();
}

bool tvOrRadio = true;
// bool toLiveVideoFeed = true;



class _LiveButtonState extends State<LiveButton> {


liveVideo(){
          Navigator.of(context).push(MaterialPageRoute(
         builder: (context) => liveVideoFeed(),
          ));
}
liveRadio(){
          Navigator.of(context).push(MaterialPageRoute(
         builder: (context) => LiveRadio(),
          ));
}


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        tvOrRadio?
        liveVideo():liveRadio();
      },
      child: Container(
        width: 75,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(60)
        ),
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Live',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
              ),
              SizedBox(width: 5,),
              tvOrRadio?
              Icon(Icons.tv_outlined,
              size: 15,
              ):
              Icon(Icons.radio,
              size: 15,
              )
            ],
          ),
        )
      ),
    );
  }
}
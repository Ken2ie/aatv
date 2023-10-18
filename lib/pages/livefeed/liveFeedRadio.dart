import 'package:flutter/material.dart';

class LiveRadio extends StatefulWidget {
  const LiveRadio({super.key});

  @override
  State<LiveRadio> createState() => _LiveRadioState();
}

class _LiveRadioState extends State<LiveRadio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_note, size: 100,),
              SizedBox(height: 20,),
              Text('Break Through Hour',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
              ), 
              ),
              Text(''),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.skip_previous),
                    color: Colors.grey,
                    ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.play_arrow)),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.skip_next),
                    color: Colors.grey,
                    )
                ],
              )
            ],
          )
          ),
      ),
    );
  }
}
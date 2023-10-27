import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLight extends StatefulWidget {
  const TorchLight({super.key});

  @override
  State<TorchLight> createState() => _TorchLightState();
}

class _TorchLightState extends State<TorchLight> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive=false;
  var controller=TorchController();
  String status="Off";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Torch Light",
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            isActive?"ON":"OFF",
            style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 6, 233, 112)),
          ),
          Padding(
            padding: EdgeInsets.all(20),
          
            child: Container(
              width: double.infinity,

        

              child: Icon(isActive? Icons.flashlight_on_sharp:Icons.flashlight_off_sharp,
            
             size:size.height-300,
             
              color: isActive? Colors.white:Colors.red
              
              ),
           
            )
            ),
           
            SizedBox(
              height: size.height*0.010,
            ),
            CircleAvatar(
              
              minRadius: 30,
              maxRadius: 40,
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(onPressed: (){
                  controller.toggle();
                  isActive=!isActive;
                  setState(() {
                    
                  });
                },
                 icon: Icon(Icons.power_settings_new_outlined,
                 size: 40,
                 color: isActive?Colors.red:Colors.white,
                 )),
              ),
            ),
              SizedBox(
              height: size.height*0.040,
            ),
            SizedBox(
              // width: double.infinity,
              child: Container(
             
                child: Text("Developed by Bibash Karki",
                softWrap: false,
                style: TextStyle(color: textColor,fontSize: 20),),
              ),
            )
        ],
      )
    );
  }
}

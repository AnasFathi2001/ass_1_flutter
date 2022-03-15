import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  late String label;
  late String value;
  MyWidget(this.label,this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      margin:const EdgeInsets.symmetric(
        horizontal:  10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        children: [
          SizedBox( width: 2,),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Text("$value",style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey
              ),),

            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 125,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text("$label",style: TextStyle(
                fontSize: 24,
                color: Colors.grey
            ),),

          ),
          SizedBox(width: 2,),


        ],
      ),
    );
  }
}
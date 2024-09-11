import 'package:flutter/material.dart';
class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration
                  (borderRadius: BorderRadius.circular(25),
                    image:DecorationImage(image: 
                   AssetImage("assets/images/firstimage.jpeg"),
                   fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 10,
                  left: 50,
                  child: Icon(Icons.arrow_back,color: Colors.white,)),
                  Positioned(
                    top:10,
                    right: 50,
                    child:  Text("Filters",
                  style: TextStyle(fontSize: 20,color: Colors.white),)),
                  Positioned(
                    top: 130,
                    left: 10,
                    child:
                        Text("American \n Restaurants",
                        style: TextStyle(fontSize: 25,color: Colors.white),),),
                        Positioned(
                          top:250,
                          left: 10,
                          child:  Container(
                          height: 250,
                          width: 250,
                          child:Text("36 places",style: TextStyle(
                          fontSize: 10,color:Colors.white),
                          ),),),
                        
                      ],
                    
                      ),
      
                       SizedBox(height: 15),
              ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 25);
                      
                    },
                    itemCount: 4,
                    itemBuilder:(context,index){
                      return Container(
                        height: 100,
                        decoration: BoxDecoration
                        (borderRadius: BorderRadius.circular(15),color: Colors.white),
                      );
                      
                    
                      
                  
                      
                      
                      
                    
                    },
                
                  ),

             

        

            
             ],
              
      ),
             
             
  
             
         );
    
  }
}
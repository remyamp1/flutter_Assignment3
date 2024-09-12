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
                      return SizedBox(
                        height: 25);
                      
                    },
                itemCount:3,
               itemBuilder:(context,index){
                return Container(
                  height: 150,
                   decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: const Color.fromARGB(255, 102, 101, 101),
                               ),

                                child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
               children: [
                 Container(
                height: 125,
                width: 110,             
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(Database.MyList[index]["image"]),
                fit: BoxFit.cover,
                ),
                
                ),),
                 SizedBox(width: 10),
                                                     
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    SizedBox(height: 5),
               Text(
                Database.MyList[index]["name"],
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, 
                color: Colors.white,
                   
                ),
                ),
                
                SizedBox(height: 5),
                    Row(children: [
                       Icon(Icons.currency_rupee,
                       color: Colors.white,
                       ),                                     
                         Text(
                          Icon(Icons.map,color: Colors.white),
                          Database.MyList[index]["name1"],
                          style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
               
                      ),            
                   
                   ],                              
               ),
               SizedBox(height: 19,),
               Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(Database.MyList[index]["text"],
                  style: TextStyle(color: Colors.white),),
                ],
               ),
                   ],                               
                  ),    

                             
        
                      
                    
                      
                  
                      
                      
                      
                    
                    
                
                   
             

               
      );},),
            
             ],
              
      ),
             
             
  
             
         );
    
  }
}
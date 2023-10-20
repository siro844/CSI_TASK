import 'package:csi_library/globalvariables.dart';
import 'package:csi_library/widgets/apptext.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 175,
          decoration: BoxDecoration(
            color: Color.fromRGBO(42, 74, 193, 1), 
          
          ),
         child: Row(
                 children: [
                   IconButton(
                    onPressed: (){
                        Navigator.pop(context);
                    }
                   , icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                   Container(
                    margin: EdgeInsets.only(left: 100),
                    child:   AppText(text: 'Menu'),
                   ),
                  
                  
                 ],
               ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context,index){
                final CartItem = cart[index];
                return (
                  ListTile(
                    leading: CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(CartItem['image'].toString()),
                    ),
                    trailing: IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.delete,color: Colors.red,),
                    ),
                    title: Text(
                      CartItem['title'].toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                    ),
                    subtitle: Text(
                      CartItem['genre'].toString(),
                    ),
                  )
                );
          }
          ),
        ),
      ],
    ),
    );
  }
}
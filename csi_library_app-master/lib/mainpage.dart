import 'package:csi_library/BookPage.dart';
import 'package:csi_library/widgets/apptext.dart';
import 'package:csi_library/widgets/product_card.dart';
import 'package:csi_library/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
   const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentindex=0;
  List<ProductCard> products=[
    const ProductCard(image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/9d22a671392953.5bc4494680bce.jpg' , genre: 'Art', title: 'Gestalt'),
    const ProductCard(image:'https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/c249ad111184009.5ffd5f54b941c.jpg' , genre: 'Design', title: 'Modern Design'),
    const ProductCard(image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/53a65b87950467.5dc7ecdd7ce48.jpg' , genre: 'Science', title: 'Astrology'),


  ];

  List<ProductTile> productcards =[
    const ProductTile(image: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/9d22a671392953.5bc4494680bce.jpg',
     genre: 'Management', author: 'Antonio Bonabeno', text: 'Show Your Work'),
    const ProductTile(image: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/c249ad111184009.5ffd5f54b941c.jpg',
     genre: 'Management1', author: 'Antonio Bonabeno', text: 'Show Your Work'),
    const ProductTile(image: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/9d22a671392953.5bc4494680bce.jpg',
     genre: 'Management2', author: 'Antonio Bonabeno', text: 'Show Your Work'),
    const ProductTile(image: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/9d22a671392953.5bc4494680bce.jpg',
     genre: 'Management3', author: 'Antonio Bonabeno', text: 'Show Your Work'),

  ];

  List<String> menu=[
    'Popular',
    'Art',
    'Buisness',
    'Craft',
    'Design',
  ];

 int currentindex=0;

  @override
  //rgb(65, 105, 225)
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      
     // backgroundColor: Color.fromRGBO(50,50,204 ,1),
      body: 
      SingleChildScrollView(
       child: 
      Column(
        children:[
          
           Container(
          
          width: double.maxFinite,
          height:  3/5 *MediaQuery.of(context).size.height,
          
          decoration: const BoxDecoration(
           // color: Color.fromRGBO(8,13,204 ,0.8),
          
           image: DecorationImage(
            image: AssetImage('images/app_bg.png'), fit: BoxFit.fill,
            ),
          
           
          ),
              child:  Column(
                children: [
      
                  Column(
                    children: [
                      const SizedBox(height: 25,),
                      const AppText(text: 'Litereasy'),
                       const SizedBox(height: 20,),
                      Container(
                        width: 9/10 *MediaQuery.of(context).size.width,
                        height: 50,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          style: const TextStyle(  color :Colors.white),
                          
                          decoration: InputDecoration(
                            
                      border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20.0),
                     borderSide: BorderSide.none,
                           ), 
                           
                            filled: true,
                            fillColor: const Color.fromRGBO(33, 64, 181, 1),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10),
                            hintText: 'What would you like to read?',
                            
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: Colors.grey.shade400,
      
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                    Container(
                     margin: EdgeInsets.only(left: 20,right: 20),
                      child :Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(text: 'New Collection',size: 24,),
                      Icon(
                        Icons.menu,
                        color:Colors.grey.shade400 ,
                      ),
                    ],
      
                  ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: 200,
                          child:  ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                          ProductCard product = products[index];
                        return  ProductCard(image:product.image, genre:product.genre, title: product.title);
                    }
                    ),
                    ),
                    const SizedBox(height: 25,),

                    
      
      // menu
Container(
                          height: 70,
                      child: ListView.builder(
                        itemCount: menu.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal:16.0),
                              child: Column(
                                children: [
                                   Text(
                                menu[index],
                                style: TextStyle(fontSize: 20,
                                color: currentindex==index? Colors.white :Colors.grey.shade400 ,
                                // decoration:   currentindex == index ?TextDecoration.underline:TextDecoration.none,
                                // decorationStyle: TextDecorationStyle.solid,
                                // decorationColor: Colors.white,
                                fontFamily:'PlayfairDisplay',),
                                                    ),
                               Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            height: 5,
                            width: index==currentindex?20:0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==currentindex?Colors.white:Colors.grey.shade400.withOpacity(0.1),
                            ),
                          ),
                                
                               
                                    
                                ],
                              ),
                            );
                    } ),
                    ),
                    ),
      
                    
                   
                   
                  
      
                ],
              ),
        ),

        Container(
          decoration: const BoxDecoration(color: Color.fromRGBO(42, 74, 193, 1)),
          child: Container(
            width: double.maxFinite,
            height:  300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              color: Colors.white, 
            ),
            child: ListView.builder(

              scrollDirection: Axis.vertical,
              itemCount: productcards.length,
              itemBuilder: (context,index){
                ProductTile productTile = productcards[index];
               return GestureDetector(
                onTap: (){
                  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookPage(productTile: productcards[index]),
                
                ),
                  );
                },
                child:
               ProductTile(image: productTile.image, genre:productTile.genre, author: productTile.author, text:productTile.text),);
            }),
          ),
        ),
        ],
      ),
    ),
    );
  }
}
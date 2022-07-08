import 'package:flutter/material.dart';
import 'package:inspiration/constant/color_constant.dart';
import 'package:inspiration/constant/string_constant.dart';
class FindScreen extends StatefulWidget {
  const FindScreen({Key? key}) : super(key: key);

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {

  final List item=['assets/bottle.jpg', 'assets/books.jpg', 'assets/book2.jpg', 'assets/book3.jpg',  'assets/book4.jpg', 'assets/image4.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  decoration: BoxDecoration(color: ColorConstant.containerColor,
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.menu,color: Colors.black,),
                          Spacer(),
                          SizedBox(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(StringConstant.find,style: const TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      const SizedBox(height: 20),
                      Text(StringConstant.inspiration,
                        style: const TextStyle(
                        fontSize: 30,fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(prefixIcon: const Icon(Icons.search),
                          hintText: StringConstant.search,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorConstant.backgroundColor,
                          filled: true,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(StringConstant.promo,style: const TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w600,
                      ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: item.length,
                            itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                child: Image.asset(item[index],fit: BoxFit.cover,height: 200,width: 150)),
                          );
                        }),
                      ),
                      const SizedBox(height: 15),
                      ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/sticker.jpg',height: 150,width: double.infinity,fit: BoxFit.cover)),
                      const SizedBox(height: 20),
                      Divider(thickness: 5,endIndent: 100,indent: 100,color: ColorConstant.textColor,)
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

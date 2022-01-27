// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProductDigikala());
}

class ProductDigikala extends StatefulWidget {
  const ProductDigikala({Key? key}) : super(key: key);

  @override
  _ProductDigikalaState createState() => _ProductDigikalaState();
}

class _ProductDigikalaState extends State<ProductDigikala> {
  List<Category> listCategory = [
    Category(
      title: 'کالای دیجیتال',
      listProduct: [
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/987bbf684de2df847c8fa1dcb9570fbf580f79dc_1611468226.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_80',
          name: 'Iphone 11',
          count: 19549000,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/1cd452a648ec0c1c723139c099e0367c9a190f1f_1626177846.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'POCO F3',
          count: 8999000,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/2e16bad7f6ea176ae6502406d7342afe9982fbf7_1615294432.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'Galaxy S20',
          count: 13950000,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/2e16bad7f6ea176ae6502406d7342afe9982fbf7_1615294432.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'Galaxy S20',
          count: 13950000,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/2e16bad7f6ea176ae6502406d7342afe9982fbf7_1615294432.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'Galaxy S20',
          count: 13950000,
        ),
      ],
    ),
    Category(
      title: 'ساعت هوشمند',
      listProduct: [
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/3b7c899d262e5b6aee0fda6dfbccd1ab9c54def9_1609324334.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'Mi Watch Lite',
          count: 1544300,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/e1fc607b9f760dfea7fde7bacfa0fa21f6a4693d_1631694483.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: '45mm Aluminum',
          count: 12730000,
        ),
        Product(
          image:
              'https://dkstatics-public.digikala.com/digikala-products/8be6b4edd94fbf41c169c0453201a75bd5dfaeba_1634819694.jpg?x-oss-process=image/resize,h_1600/quality,q_80/watermark,image_ZGstdy8xLnBuZw==,t_90,g_nw,x_15,y_15',
          name: 'Maimo-WT2105',
          count: 1114500,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(16),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 6,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                      fillColor: Colors.grey[300],
                      suffixIcon: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(width: 16),
                          Icon(
                            CupertinoIcons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'جستجو در',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 16,
                              fontFamily: 'Iransans',
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            'دیجیکالا',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Aviny',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(listCategory.length, (index) {
                      return Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'مشاهده همه',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: 'Aviny',
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  listCategory[index].title,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Iransans',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            child: ListView.builder(
                              itemCount: listCategory[index].listProduct.length,
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Container(
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.network(
                                          listCategory[index]
                                              .listProduct[i]
                                              .image,
                                          width: 80,
                                        ),
                                        Text(
                                          listCategory[index]
                                              .listProduct[i]
                                              .name,
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          listCategory[index]
                                              .listProduct[i]
                                              .count
                                              .toString(),
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Category {
  String title;
  List<Product> listProduct;
  Category({required this.title, required this.listProduct});
}

class Product {
  String image;
  String name;
  int count;
  Product({required this.image, required this.name, required this.count});
}

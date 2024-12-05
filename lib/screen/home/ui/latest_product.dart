import 'package:flutter/material.dart';
import 'package:t2303e_flutter/model/product_list.dart';
class LatestProduct extends StatefulWidget{
  const LatestProduct({Key? key}) : super(key: key);

}
class _LatestProductState extends State<LatestProduct>{
  late ProductList data;

  Future<void> _fetchProducts() async {
    try{
      const url = "https://dummyjson.com/products?limit=12";
      Response rs = await Dio().get(url);
      // convert to Model object
      ProductList pl = ProductList.fromJson(rs.data);
      setState(() {
        data = pl;
      });
    }catch(e){

    }
  }

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return data??Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Products"),
        Container(
          height: 260,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.products.length,
              itemBuilder: (context, index){
                return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(data.products[index].title)
                )
              }
          ),
        )
      ],
    )
  }
}
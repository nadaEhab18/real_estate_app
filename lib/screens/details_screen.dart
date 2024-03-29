
import 'package:flutter/material.dart';
import 'package:real_estate_app/models/item_model.dart';

class DetailsScreen extends StatefulWidget {
   DetailsScreen(this.item,{Key? key}) : super(key: key);
   Item item;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text(widget.item.title!,style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                 image: DecorationImage(
                   image: AssetImage(widget.item.thumb_url!),
                   fit: BoxFit.cover,
                 ),
              ),
            ),

            SizedBox(height: 10,),
            Text(widget.item.category!,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade600,

            ),),
            SizedBox(height: 8,),
            Text(widget.item.title!,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8,),
            Row(

              children: [
                Icon(Icons.location_on,
                  color: Colors.grey,),

                Text(widget.item.location!,style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.grey,

                ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.item.price}\$ / Month',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border),),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),

                ),
                fillColor: Colors.blue,
                child: Text('Rent Now',style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,

                ),),
              ),
            ),

          ],

        ),
              ),
    );


 }
}

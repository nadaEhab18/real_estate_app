
import 'package:flutter/material.dart';
import 'package:real_estate_app/models/item_model.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.item,this.onTap,{Key? key}) : super(key: key);
   Item item ;
   Function()? onTap;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Color(0xffcf9f8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: AssetImage(widget.item.thumb_url!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(widget.item.category!,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue.shade600,
              ),),

              SizedBox(height: 8,),
              Text(widget.item.title!,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),),
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

              SizedBox(height: 20,),
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
                   IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
              ),
            ],

          ),
        ),

      ),
    );
  }
}

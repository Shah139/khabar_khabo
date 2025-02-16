import 'package:flutter/material.dart';
import 'package:khabar_khabo/components/my_receipt.dart';
import 'package:khabar_khabo/models/restaurent.dart';
import 'package:khabar_khabo/services/auth/database/firestore.dart';
import 'package:provider/provider.dart';

class DelivereyProgressPage extends StatefulWidget {
  const DelivereyProgressPage({super.key});

  @override
  State<DelivereyProgressPage> createState() => _DelivereyProgressPageState();
}

class _DelivereyProgressPageState extends State<DelivereyProgressPage> {
  //get access to db
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    //if we get to this page,submit order to firestore db
    String receipt = context.read<Restaurent>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: 
      SafeArea(
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              MyReceipt(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
      padding:const EdgeInsets.all(25),
      child: Row(
        children: [

          //profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: (){}, icon:const Icon(Icons.person)),
          ),
          const SizedBox(width: 10,),

          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Motin mia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "CSE STUDENT",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),

          const Spacer(),
          Row(
            children: [
              //msg 
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                onPressed: (){}, 
                icon:const Icon(Icons.message),
                color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 10,),

           //call

           Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: (){}, 
              icon:const Icon(Icons.call),
              color: Colors.green,
              ),
           ),


            ],
          )
        ],
      ),
    );
  }
}
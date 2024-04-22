import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key, required this.totalPrice});
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamento", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(51, 102, 102, 1),
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: 350,
            height: 350,
            decoration: ShapeDecoration(color: Color.fromRGBO(51, 102, 102, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.monetization_on, color: Colors.white, size: 40,),
                const SizedBox(height: 20,),
                Text("Al-Imports Agradece!", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                Text("Realize o pagamento de R\$:${totalPrice}", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Text("PIX CPNJ: 99.999.999/9999-99", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

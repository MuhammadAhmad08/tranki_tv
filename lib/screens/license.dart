import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class License extends StatelessWidget {
  const License({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(backgroundColor: const Color.fromARGB(255, 255, 17, 0),
      title:const Center(child:  Text('License Agreement', style: TextStyle(color: Colors.white),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:  EdgeInsets.all(12.0),
              child:  Text('Lorem ipsum dolor sit amet consectetur. Lacus vulputate vitae hac lacinia integer tellus nibh. Sit at nibh sodales enim pellentesque tempor. Viverra justo integer amet semper. In risus at eu faucibus dictum orci. Eu lorem rhoncus rhoncus pretium id blandit consectetur risus ut.Pretium neque velit elementum blandit. Ullamcorper rutrum vitae fames in sapien. At facilisis consectetur gravida ac dolor quis condimentum dui. In non fringilla luctus tincidunt.\n\n A dignissim enim eget in id id eget. Maecenas placerat enim sit metus cursus faucibus. Aliquet rhoncus volutpat consectetur egestas vitae purus massa sapien id. Eget neque integer dignissim sagittis eu etiam. Eget eget et at habitant ultrices ut volutpat. Pharetra sed placerat sit in elit non nulla. Id aliquam vitae platea tortor augue vestibulum quis orci arcu. Est hac malesuada adipiscing sed.Risus interdum arcu quam metus. Nec tempus tortor elementum vitae facilisis dictumst tellus nunc habitant. Mauris nibh dictum nibh feugiat venenatis euismod morbi non. Suspendisse mattis venenatis mauris faucibus quam turpis et tortor. Tellus egestas fringilla massa sed. Eu elit sollicitudin mauris urna lacus gravida nisl mauris. Lobortis viverra nisl aliquet semper vitae eget. Nisl aliquet tincidunt id non sed et quam turpis neque. In mattis donec nulla bibendum facilisis. Sem a libero suspendisse faucibus turpis.\n\n Porttitor in mollis volutpat sed neque enim diam. Tristique sed velit eget et. Ullamcorper diam pellentesque porta vitae odio varius. Velit quis in morbi tempus nulla diam. Ut pharetra volutpat tristique at venenatis. Auctor suspendisse eu condimentum aliquam malesuada pellentesque. Mattis pellentesque rutrum aenean sed. Vulputate aenean hac massa massa magna vitae nisi. Lectus massa id amet enim enim amet id. Id libero nec mi at commodo. At rhoncus sapien non massa amet. In molestie semper quam suspendisse aliquam fermentum.\n\n Lorem venenatis pretium sit et sollicitudin proin proin. Tristique amet maecenas nisi ipsum eu. Maecenas nec volutpat augue porttitor fusce habitant mauris habitant. Porta sit purus non ante blandit vitae risus id ullamcorper. Nibh dui commodo ultrices amet a. Tristique in vulputate mattis euismod ac ac. Id curabitur odio mauris amet in sollicitudin at. Dictumst et orci et quisque nec nibh a. Et imperdiet pulvinar nam enim duis vel orci. Sed venenatis purus.'),
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 17, 0)),
                  onPressed: (){}, child:const Text('Accept', style: TextStyle(color: Colors.white),)),
              ],
            )
          ],
        ),
      ),
     );
  }
}

import 'package:do_an_mon_hoc/components/controlles.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            RaisedButton(
              onPressed: () {
                  userController.signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomeScreen  extends StatelessWidget {
//   const HomeScreen ({ Key key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: const Body(),
//     );
//   }

//   AppBar buildAppBar() {
//     return AppBar(backgroundColor: Colors.white,
//     elevation: 0,
//     leading: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/back.svg")),
//     actions: <Widget>[IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg",
//     color:kTextColor,
//     )),
//     IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg",
//     color:kTextColor,
//     )),
//     const SizedBox(width: kDefaultPaddin / 2)
//     ],
//     );
//   }
// }
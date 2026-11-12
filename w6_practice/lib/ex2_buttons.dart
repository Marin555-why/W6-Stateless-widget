import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum ButtonType { before , after }
enum ButtonIcon{ Primary, Secondary , Disabled}
enum IconPosition { left, right }
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children:[ 
          CustomButton(
          label: 'Submit',
          icon: Icons.send,
          type: ButtonType.before,
          position: IconPosition.left,
          buttonIcon: ButtonIcon.Primary,
          color: Colors.blue,
          ),

        CustomButton(
          label: 'Time',
          icon: Icons.access_time,
          type: ButtonType.before,
          position: IconPosition.right,
          buttonIcon: ButtonIcon.Secondary,
          color: Colors.green,
          ),
          CustomButton(
          label: 'Account',
          icon: Icons.person,
          type: ButtonType.after,
          position: IconPosition.right,
          buttonIcon: ButtonIcon.Disabled,
          color: Colors.grey,
          ),],
        ),
       

        ), // YOUR CODE
      ),
    );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType type;
  final IconPosition position;
  final ButtonIcon buttonIcon;
  final Color color;
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    required this.type,
    required this.position,
    required this.buttonIcon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
         Container(
          
          decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(20),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              
              children: position == IconPosition.left?[
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(label, style: TextStyle(color: Colors.white)),
                ]
                : [
                  Text(label, style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                ],
              
              ),
          ),
    
    
          ),
        ],),
      
    );
  }
}

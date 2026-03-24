import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;

  final EdgeInsets? padding;
  const DefaultButton({
    super.key,
    this.text,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: ElevatedButton(
        onPressed: onPressed, 
        child: Text(text ?? ''),
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((state){
            if(state.contains(WidgetState.disabled)){
              return backgroundColor?.withValues(alpha: 0.5);
            }
            else{}

          }))        ),
        );

    
    
  }
}
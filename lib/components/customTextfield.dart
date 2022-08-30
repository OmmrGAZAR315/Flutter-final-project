import 'package:flutter/material.dart';

class customTextfield extends StatefulWidget {
  customTextfield({
    required this.passVisib,
    required this.texxt,
  });

  String texxt;
  bool passVisib;

  @override
  State<customTextfield> createState() => _customTextfieldState();
}

class _customTextfieldState extends State<customTextfield> {
  late FocusNode focusnode1;

  void initState() {
    super.initState();
    focusnode1 = FocusNode();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(focusnode1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? value) {
        if (value!.isEmpty) {
          return "this field is required";
        }
      },
      obscureText: widget.passVisib,
      focusNode: focusnode1,
      cursorColor: Colors.red,
      onTap: _requestFocus,
      decoration: InputDecoration(
        suffixIcon: widget.passVisib
            ? TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.grey)),
                onPressed: () {
                  setState(() {
                    widget.passVisib = !widget.passVisib;
                  });
                },
                child: widget.passVisib == true
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.black,
                      ),
              )
            : null,
        label: Text(widget.texxt),
        labelStyle: TextStyle(
            color: focusnode1.hasFocus ? Colors.red : Colors.grey.shade700,
            fontWeight: FontWeight.w400,
            fontSize: 20),
        filled: true,
        fillColor: Colors.grey.shade300,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.5),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 3),
            borderRadius: (BorderRadius.vertical(top: Radius.circular(3)))),
      ),
    );
  }
}

class customTextfield2 extends StatefulWidget {
  customTextfield2({
    required this.texxt,
  });

  String texxt;
  bool passVisib = false;

  @override
  State<customTextfield2> createState() => _customTextfieldState2();
}

class _customTextfieldState2 extends State<customTextfield2> {
  late FocusNode focusnode1;

  void initState() {
    super.initState();
    focusnode1 = FocusNode();
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(focusnode1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.passVisib,
      focusNode: focusnode1,
      cursorColor: Colors.red,
      onTap: _requestFocus,
      decoration: InputDecoration(
        label: Text(widget.texxt),
        labelStyle: TextStyle(
            color: focusnode1.hasFocus ? Colors.red : Colors.grey.shade700,
            fontWeight: FontWeight.w400,
            fontSize: 20),
        filled: true,
        fillColor: Colors.grey.shade300,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.5),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 3),
            borderRadius: (BorderRadius.vertical(top: Radius.circular(3)))),
      ),
    );
  }
}

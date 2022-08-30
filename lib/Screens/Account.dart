import 'package:flutter/material.dart';
import 'package:graduationproject/components/customTextfield.dart';

class account extends StatefulWidget {
  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  late FocusNode focusnode1;
  bool passVisib = true;
  TextEditingController passCont = TextEditingController();

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
    return Scaffold(
      backgroundColor: Color(0xffFCFCFA),
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 1,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: Text(
          "Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Image.asset(
                "images/McDonald'sCards.jpg",
                height: 240,
                width: 250,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: customTextfield(passVisib: false, texxt: "Email")),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: TextFormField(
              controller: passCont,
              obscureText: passVisib,
              focusNode: focusnode1,
              cursorColor: Colors.red,
              onTap: _requestFocus,
              decoration: InputDecoration(
                suffixIcon: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey)),
                  onPressed: () {
                    setState(() {
                      passVisib = !passVisib;
                    });
                  },
                  child: passVisib == true
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        ),
                ),
                label: Text("Password"),
                labelStyle: TextStyle(
                    color:
                        focusnode1.hasFocus ? Colors.red : Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                filled: true,
                fillColor: Colors.grey.shade300,
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade500, width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 3),
                    borderRadius:
                        (BorderRadius.vertical(top: Radius.circular(3)))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 16),
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.red.shade100)),
                onPressed: () {
                  Navigator.pushNamed(context, "remember");
                },
                child: Text(
                  "Can't remember your password?",
                  style: TextStyle(fontSize: 17, color: Colors.red),
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 55,
            decoration: BoxDecoration(
                color: passCont.text.isNotEmpty
                    ? Color(0xffff0015)
                    : Color(0xffE2E1E0),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              "Sign in",
              style: TextStyle(fontSize: 19, color: Colors.white),
            )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 16),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.red.shade100)),
                  onPressed: () {
                    Navigator.pushNamed(context, "create");
                  },
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffff0015),
                    ),
                  ))),
        ],
      ),
    );
  }
}

class remember extends StatefulWidget {
  @override
  State<remember> createState() => _rememberState();
}

class _rememberState extends State<remember> {
  late FocusNode resetpass;
  TextEditingController emailCont = TextEditingController();
  var email;
  late bool boolean;

  void initState() {
    super.initState();
    resetpass = FocusNode();
    boolean = false;
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(resetpass);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 1,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: Text(
          "Reset Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Image.asset(
                "images/password.jpg",
                height: 240,
                width: 250,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              "Enter the email and follow the link in your inbox to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: TextFormField(
              controller: emailCont,
              focusNode: resetpass,
              cursorColor: Colors.red,
              onTap: _requestFocus,
              decoration: InputDecoration(
                label: const Text("Email"),
                labelStyle: TextStyle(
                    color:
                        resetpass.hasFocus ? Colors.red : Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                filled: true,
                fillColor: Colors.grey.shade300,
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade500, width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 3),
                    borderRadius:
                        (BorderRadius.vertical(top: Radius.circular(3)))),
              ),
            ),
          ),
          InkWell(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.red.shade100),
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              decoration: BoxDecoration(
                  color: emailCont.text.isNotEmpty
                      ? Color(0xffff0015)
                      : Color(0xffE2E1E0),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                "Sign in",
                style: TextStyle(fontSize: 19, color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class create extends StatefulWidget {
  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  late FocusNode focusnode1;
  late FocusNode focusnode2;

  void initState() {
    super.initState();
    focusnode1 = FocusNode();
    focusnode2 = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> form = GlobalKey<FormState>();
    List listaia = [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 25),
        child: Text(
            "All fields marked with * need to be filled in and/or checked"),
      ),
      Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: customTextfield(passVisib: false, texxt: "First Name *")),
      Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: customTextfield(passVisib: false, texxt: "Last Name *"),
      ),
      Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: customTextfield(passVisib: false, texxt: "Email *")),
      Padding(
        padding: EdgeInsets.only(
          bottom: 14,
          left: 10,
          right: 10,
        ),
        child: Text(
          "The email is used for login and password retrieval so make sure it's a valid one.",
          style: TextStyle(
              letterSpacing: 0.2,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade700),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: customTextfield(passVisib: false, texxt: "mobile number *"),
      ),
      Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: customTextfield(passVisib: true, texxt: "Pick a Password *")),
      Padding(
          padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
          child: Text(
            "Must include 8 characters, 1 uppercase, 1 lowercase and 1 digit.",
            style: TextStyle(
                letterSpacing: 0.4,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700),
          )),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Text(
          "OPTIONAL",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: customTextfield2(texxt: "Gender (optional)"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: customTextfield2(texxt: "Date of Birth (optional)"),
      ),
      GestureDetector(
        onTap: () {
          if (form.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.blueGrey,
                content: Text("New account has been created")));
          } else
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.redAccent,
                content: Text("Those fields are required")));
        },
        child: Container(
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xffff0015), borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            "Continue",
            style: TextStyle(fontSize: 19, color: Colors.white),
          )),
        ),
      ),
    ];
    print(listaia);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 1,
        shadowColor: Colors.grey.withOpacity(0.3),
        title: Text(
          "Create Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: Form(
        key: form,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: listaia.length,
              itemBuilder: (context, index) => listaia[index]),
        ),
      ),
    );
  }
}

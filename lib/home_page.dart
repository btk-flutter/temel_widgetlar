import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();

  //String deger = "Start";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Ana Sayfa"),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNameTextField(),
          SizedBox(height: 16),
          _buildNameText(),
          SizedBox(height: 16),
          _buildChangeElevatedButton(),
          SizedBox(height: 16),
          _buildTextButton(),
          SizedBox(height: 16),
          _buildOutlinedButton(),
        ],
      ),
    );
  }

  Widget _buildNameTextField() {
    return TextField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: "Adınızı Giriniz",
        labelStyle: TextStyle(
          fontSize: 36,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 5),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 5),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      style: TextStyle(
        fontSize: 26,
      ),
      /*onChanged: (String yeniDeger) {
        deger = yeniDeger;
      },*/
    );
  }

  Widget _buildNameText() {
    return Text(
      _nameController.text,
      style: TextStyle(
        fontSize: 36,
      ),
    );
  }

  Widget _buildChangeElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(12),
      ),
      child: Text(
        "İsmi Değiştir",
        style: TextStyle(
          fontSize: 36,
        ),
      ),
      onPressed: () {
        setState(() {});
      },
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      child: Text(
        "İsmi Değiştir",
        style: TextStyle(
          fontSize: 36,
        ),
      ),
      onPressed: () {
        setState(() {});
      },
    );
  }



  Widget _buildOutlinedButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(12),
        side: BorderSide(
          width: 5,
        ),
      ),
      child: Text(
        "İsmi Değiştir",
        style: TextStyle(
          fontSize: 36,
        ),
      ),
      onPressed: () {
        setState(() {});
      },
    );
  }
}

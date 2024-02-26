import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kullanici_kayit_uygulamasi/consts/sabit.dart';

import '../models/country.dart';
import 'package:http/http.dart' as http;

class KullaniciKayit extends StatefulWidget {
  const KullaniciKayit({super.key});

  @override
  State<KullaniciKayit> createState() => _KullaniciKayitState();
}

class _KullaniciKayitState extends State<KullaniciKayit> {
  TextEditingController _controllerad = TextEditingController();
  TextEditingController _controllersoyad = TextEditingController();
  Country? selectedCountry;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCountries();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kayıt ol"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //! Resim Seçme alanı
                  Text("Resim Seçiniz (!)*"),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.12,
                            backgroundImage:
                                FileImage(File(Sabit.secilenResim!.path))
                                    as ImageProvider,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 15,
                              child: IconButton(
                                onPressed: () {
                                  resimsec(context);
                                },
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //! Kullanici adi Soyadi Girdiği Kısım
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: _controllerad,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.person, color: Colors.black26, size: 25),
                        label: Text("Ad*"),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      controller: _controllersoyad,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.person, color: Colors.black26, size: 25),
                        label: Text("Soyad*"),
                      ),
                    ),
                  ),
                  //! Ülke Seçme
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<Country>(
                          value: selectedCountry,
                          items: Sabit.countries.map((Country country) {
                            return DropdownMenuItem<Country>(
                              value: country,
                              child: Text(
                                country.name!.common.toString(),
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                          onChanged: (Country? selected) async {
                            setState(() {
                              selectedCountry = selected!;
                            });
                            // await textAramaYap("", context);

                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> fetchCountries() async {
    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      Sabit.countries = parseCountries(response.body);
      print("bitti");
    } else {
      throw Exception('Failed to load countries');
    }
  }

  List<Country> parseCountries(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Country>((json) => Country.fromJson(json)).toList();
  }

  Future<dynamic> resimsec(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              width: 80,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Profil Fotoğrafı",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 16),
                    )),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 70,
                  height: 70,
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              )),
                          child: IconButton(
                            onPressed: () async {
                              await resimSecCamera();
                            },
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.blue[400],
                              size: 30,
                            ),
                          ),
                        ),
                        Text("Kamera")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 70,
                  height: 70,
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              )),
                          child: IconButton(
                            onPressed: () async {
                              await resimSecGaleri();
                            },
                            icon: Icon(
                              Icons.photo_library,
                              color: Colors.blue[400],
                              size: 30,
                            ),
                          ),
                        ),
                        Text("Galeri")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        );
      },
    );
  }

  Future<void> resimSecCamera() async {
    final picker = ImagePicker();
    XFile? pickedFile;

    pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        Sabit.secilenResim = pickedFile;
      });
    }
  }

  Future<void> resimSecGaleri() async {
    final picker = ImagePicker();
    XFile? pickedFile;

    pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        Sabit.secilenResim = pickedFile;
      });
    }
  }
}

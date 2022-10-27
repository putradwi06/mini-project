import 'package:flutter/material.dart';

class Alfatihah extends StatefulWidget {
  const Alfatihah({Key? key}) : super(key: key);

  @override
  State<Alfatihah> createState() => _DoaState();
}

class _DoaState extends State<Alfatihah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow,
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Surat Al-fatihah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Lafadz Surat Al-fatihah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.asset("asset/images/bg_alfatihah.jpeg",
                        width: 330, height: 200, fit: BoxFit.fill),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff0e1446)),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        title: Center(
                                          child:
                                              Text("Tentang Surat Al-fatihah"),
                                        ),
                                        content: SingleChildScrollView(
                                          child: Text(
                                            "Surat ke-1 al-Fatihah, artinya Pembukaan, lengkap ayat 1-7. Disebut Surat al-Fatihah (Pembuka) dikarenakan sebagai surat pertama dalam kitabullah. Disebut juga sebagai Ummul Qur’an (Ibunya al-Qur’an) karena mengandung seluruh inti ajaran Qur’an, seperti tauhid, ibadah dan lain sebagainya. Ini adalah tujuh ayat yang paling agung di dalam Qur’an, tujuh ayat yang selalu diulang-ulang.",
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ));
                            },
                            child: Center(
                              child: Text(
                                "Tentang",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ .",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "bismillāhir-raḥmānir-raḥīm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Artinya: Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "al-ḥamdu lillāhi rabbil-'ālamīn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya: Segala puji bagi Allah, Tuhan semesta alam",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "ar-raḥmānir-raḥīm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya: Maha Pemurah lagi Maha Penyayang.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "مَٰلِكِ يَوْمِ ٱلدِّينِ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "māliki yaumid-dīn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya:  Yang menguasai di Hari Pembalasan.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "iyyāka na’budu wa iyyāka nasta’īn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya:Hanya Engkaulah yang kami sembah, dan hanya kepada Engkaulah kami meminta pertolongan.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "ihdinaṣ-ṣirāṭal-mustaqīm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya: Tunjukilah kami jalan yang lurus",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّين",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "ṣirāṭallażīna an’amta ‘alaihim gairil-magḍụbi ‘alaihim wa laḍ-ḍāllīn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Artinya: (yaitu) Jalan orang-orang yang telah Engkau beri nikmat kepada mereka; bukan (jalan) mereka yang dimurkai dan bukan (pula jalan) mereka yang sesat.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

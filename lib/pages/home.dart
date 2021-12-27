import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get center => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Cuisine App"),
      )),
      body: ListView(
        children: [
          photo(),
          header(),
          header2(),
          date(),
          profile(),
          bar(),
          conT(),
          Rmaterial(),
          MeterialPic(),
          Rmaterialcon(),
          Howto(),
          Howtocon(),
          line(),
          end()
        ],
      ),
    );
  }

  Container MeterialPic() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset('images/pic1.jpg'),
                // Image.asset('images/pic6.jpg')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset('images/pic2.jpg'),
                // Image.asset('images/pic5.jpg')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset('images/pic3.jpg'),
                // Image.asset('images/pic4.jpg')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding end() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 5, 25, 30),
          child: Text(
              'ทำง่ายใช่ไหมคะ กับเมนู “ล็อบสเตอร์อบชีส” ที่รสชาติเข้มข้นไม่แพ้ร้านเลย โดยเราไม่ต้องเป็นมือโปรในการเตรียมล็อบสเตอร์ก็สามารถทำเมนูนี้ได้ที่บ้าน\n'
              '\nที่มา: https://www.wongnai.com/recipes/baked-lobster-with-cheese',
              style: GoogleFonts.kanit(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                      fontSize: 18))),
        ),
      ),
    );
  }

  Padding date() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '27 ธ.ค. 2564 . By เชฟซีน กุลิโกะ',
          style: GoogleFonts.itim(
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Row bar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Align(
        //   alignment: Alignment.center,
        // ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: FaIcon(
                FontAwesomeIcons.stopwatch,
                color: Colors.redAccent[400],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'เวลาเตรียม\n10 นาที',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlue,
                  // letterSpacing: 0.5,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: FaIcon(
                FontAwesomeIcons.utensils,
                color: Colors.blue[400],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'เวลาปรุง\n50 นาที',
                style: TextStyle(
                  color: Colors.lightBlue,
                  // letterSpacing: 0.5,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: FaIcon(
                FontAwesomeIcons.fire,
                color: Colors.deepOrange[400],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'แคลอรี่\n300kcal/เสริฟ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: FaIcon(
                FontAwesomeIcons.userFriends,
                color: Colors.green[400],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'สำหรับ\n2 เสริฟ',
                style: TextStyle(
                  color: Colors.lightBlue,
                  // letterSpacing: 0.5,
                  fontSize: 16,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Row Howto() {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: Divider(
                color: Colors.grey[400],
                thickness: 4,
              )),
        ),
        Container(
            child: Text('วิธีทำ',
                style: GoogleFonts.itim(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)))),
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: Divider(
                color: Colors.grey[400],
                thickness: 4,
              )),
        ),
      ],
    );
  }

  Row line() {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: Divider(
                color: Colors.grey[400],
                thickness: 4,
              )),
        ),
      ],
    );
  }

  Row Rmaterial() {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: Divider(
                color: Colors.grey[400],
                thickness: 4,
              )),
        ),
        Container(
            child: Text('วัตถุดิบ',
                style: GoogleFonts.itim(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)))),
        Expanded(
          child: Container(
              padding: EdgeInsets.all(8),
              child: Divider(
                color: Colors.grey[400],
                thickness: 4,
              )),
        ),
      ],
    );
  }

  Widget Rmaterialcon() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 5, 25, 0),
        child: Text(
            'วัตถุดิบ'
            '\n1.	แคนนาเดียนล็อบสเตอร์ดิบส่วนหาง ตรา Qfresh 5 ตัว'
            '\n2.	หอมแขกหั่นเต๋า 1/2 ลูก'
            '\n3.	เนยสด 100 กรัม'
            '\n4.	แป้งอเนกประสงค์ 2 ช้อนโต๊ะ '
            '\n5.	คุกกิ้งครีม 1 ถ้วยตวง'
            '\n6.	น้ำมันมะกอก 1 ช้อนโต๊ะ '
            '\n7.	ไวน์ขาว 3 ช้อนโต๊ะ'
            '\n8.	พาร์สลีย์อบแห้ง 1/2 ช้อนโต๊ะ '
            '\n9.	เกลือ 1/4 ช้อนชา '
            '\n10.	พริกไทย 1/4 ช้อนชา '
            '\n11.	ชีสพาร์เมซานขูด ตามต้องการ '
            '\n12.	สลัดผัก สำหรับเสิร์ฟคู่ '
            '\nลงมือโล้ดดดดดดดด!',
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 18))),
      ),
    );
  }

  Widget Howtocon() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 5, 25, 0),
        child: Text(
            'STEP 1 : เตรียมล็อบสเตอร์ '
            '\n•	นำ แคนนาเดียนล็อบสเตอร์ดิบส่วนหาง ตรา Qfresh วางให้ละลายที่อุณหภูมิห้องหรือแช่ในน้ำเย็น แล้วนำมาตัดเปลือกส่วนท้องออกตามวิดีโอ และนำล็อบสเตอร์เรียงลงบนถาดอบให้ครบทั้ง 5 ตัว แล้วพักไว้เตรียมใส่ซอส'
            '\nSTEP 2 : ทำซอส + อบ'
            '\n•	ตั้งกระทะบนเตาโดยใช้ไฟกลาง ใส่น้ำมันมะกอกลงไปในกระทะ เมื่อน้ำมันร้อนให้ใส่หอมแขกหั่นเต๋าลงไปผัดจนเปลี่ยนเป็นสีน้ำตาลอ่อน ๆ แล้วใส่ไวน์ขาวลงไปผัดให้มีกลิ่นหอม'
            '\n•	ใส่เนยลงไปในกระทะแล้วใช้ตะหลิวคนให้เนยละลาย จากนั้นใส่แป้งอเนกประสงค์ลงไปผัดให้เข้ากันกับเนย แล้วใส่คุกกิ้งครีมลงคนให้เข้ากัน ปรุงรสด้วยเกลือ พริกไทย พาร์สลีย์อบแห้งลงไปคนให้เข้ากัน เมื่อครีมเริ่มเซตตัวข้นขึ้นแล้วยกลงจากเตาได้เลย'
            '\n•	นำล็อบสเตอร์ที่เตรียมไว้ (STEP 1) นำมาใส่ซอสลงไปให้ทั่ว ๆ จากนั้นขูดชีสพาร์เมซานลงไป นำเข้าอบด้วยไฟบนล่าง อุณหภูมิ 200 องศาเซลเซียล เป็นเวลา 25 นาที '
            '\nSTEP 3 : จัดเสิร์ฟ '
            '\n•	เมื่ออบครบเวลาเรียบร้อยแล้ว นำล็อบสเตอร์มาจัดลงบนจานเสิร์ฟคู่กับสลัดผัก เท่านี้เราก็ได้เมนู “ล็อบสเตอร์อบชีส” ร้อน ๆ กินกันที่บ้านแล้วล่ะจ้า ',
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 18))),
      ),
    );
  }

  Widget conT() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 5, 25, 30),
        child: Text(
            'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า ',
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 18))),
      ),
    );
  }

  CircleAvatar profile() {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue[700],
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 42,
          backgroundImage: NetworkImage(
              'https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/262049517_1779965548853383_6097034443031743548_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEJhwLN6HCe2_K4hxF-syeWj2En6meOnhmPYSfqZ46eGdXij1vlxyTwE4jgn0IXH6XnF8exJ-2Iopz6egkxz9ui&_nc_ohc=l8hMWylW37wAX__KQx4&_nc_ht=scontent.fbkk5-7.fna&oh=00_AT9OO8xScFyjmCLZrE0qAzUUwWR1HzdUjQ9vMvmryWtJsg&oe=61CDC5C9'),
        ),
      ),
    );
  }

  Container header() {
    return Container(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 25, 15, 0),
        child: Text(
            ' วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน! ',
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                    fontSize: 23))),
      ),
    );
  }

  Container photo() {
    return Container(child: Image(image: AssetImage('images/lofter.jpg')));
  }

  Widget header2() {
    return Container(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 5, 25, 30),
        child: Text(
            'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ',
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 18))),
      ),
    );
  }
}

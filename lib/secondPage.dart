import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

Color lightGrey = Color(0xFF202425);
Color darkGrey = Color(0xFF191D1E);
IconData videogame_asset = IconData(0xe6aa, fontFamily: 'MaterialIcons');
BoxDecoration purpleBackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xFF7854C4), // İlk renk (daha yoğun)
      Color(0xFF7854C4), // İlk renk (daha yoğun)

      Color(0xFFAF70FB), // İkinci renk
    ],
    begin: Alignment.centerLeft, // Başlangıç noktası (sol)
    end: Alignment.centerRight, // Bitiş noktası (sağ)
  ),
);

class _SecondPageState extends State<SecondPage> {
  bool switch2 = true; // Başlangıç durumu
  bool switch1 = false; // Başlangıç durumu
  int selectedIndex1 = 0; // Başlangıçta 5s seçili
  double _scale1 = 1.0; // Hover efekti için butonun boyutunu kontrol eder

  int selectedIndex2 = 0; // Başlangıçta 5s seçili
  double _scale2 = 1.0; // Hover efekti için butonun boyutunu kontrol eder

  void _toggleButton2() {
    setState(() {
      switch2 = !switch2;
    });
  }

  void _toggleButton1() {
    setState(() {
      switch1 = !switch1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF191D1E), // Arka plan rengini burada ekledik
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Yüksekliği minimumda tut
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Satır
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    width: 38, // Butonun genişliği
                    height: 38, // Butonun yüksekliği
                    decoration: BoxDecoration(
                      color: Color(0xFFA66CF7), // Butonun rengi
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8), // Üst sol köşe yuvarlak
                        topLeft: Radius.circular(25), // Üst sol köşe yuvarlak
                        topRight: Radius.circular(25), // Üst sağ köşe yuvarlak
                        bottomRight:
                            Radius.circular(25), // Alt sağ köşe yuvarlak
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.string(
                        '''
                            <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M7.20645 5.17509L2.95207 0.920719C2.39145 0.360094 1.48145 0.360094 0.920822 0.920719C0.360198 1.48134 0.360198 2.39134 0.920822 2.95197L5.1752 7.20634C5.68332 7.71447 6.37207 8.00009 7.09082 8.00009H8.0002V7.09072C8.0002 6.37197 7.71457 5.68322 7.20645 5.17509ZM2.53332 6.33259L4.29145 8.09072C5.03395 8.83322 6.0402 9.25009 7.0902 9.25009H8.62457C8.96957 9.25009 9.24957 8.97009 9.24957 8.62509V7.09072C9.24957 6.76009 9.20457 6.43759 9.12645 6.12509H12.3746C14.1002 6.12509 15.4996 7.52447 15.4996 9.25009V11.7501C15.4996 13.4757 14.1002 14.8751 12.3746 14.8751H3.62457C1.89895 14.8751 0.499573 13.4757 0.499573 11.7501V9.25009C0.499573 7.91259 1.34895 6.77759 2.53332 6.33259ZM12.0621 11.7232C12.5796 11.7232 12.9996 11.3032 12.9996 10.7857C12.9996 10.2682 12.5796 9.84822 12.0621 9.84822C11.5446 9.84822 11.1246 10.2682 11.1246 10.7857C11.1246 11.3032 11.5446 11.7232 12.0621 11.7232ZM8.93707 11.7232C9.45457 11.7232 9.87457 11.3032 9.87457 10.7857C9.87457 10.2682 9.45457 9.84822 8.93707 9.84822C8.41957 9.84822 7.99957 10.2682 7.99957 10.7857C7.99957 11.3032 8.41957 11.7232 8.93707 11.7232Z" fill="white"/>
                            </svg>
                            ''',
                        color: Colors.white,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Üst kısmı hizalar
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Sol kısmı hizalar
                    children: [
                      Text(
                        "Text To Video",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text("Generate videos by just typing text",
                          style: TextStyle(color: Colors.white, fontSize: 9))
                    ],
                  ),
                  const SizedBox(width: 130),
                  FloatingActionButton(
                    backgroundColor: lightGrey, // lightGrey yerine
                    onPressed: () {
                      print("FloatingActionButton Pressed");
                    },
                    mini: true, // Butonu küçültür
                    child: SvgPicture.string(
                      '''
          <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
            <g clip-path="url(#clip0_1_240)">
              <path d="M5.88394 5.00024L9.81712 1.06749C10.0613 0.823336 10.0613 0.427493 9.81712 0.183362C9.57297 -0.0607877 9.17713 -0.0607877 8.933 0.183362L5.00023 4.11652L1.06748 0.183362C0.82333 -0.0607877 0.427487 -0.0607877 0.183357 0.183362C-0.0607739 0.427513 -0.0607934 0.823356 0.183357 1.06749L4.11652 5.00024L0.183357 8.933C-0.0607934 9.17715 -0.0607934 9.573 0.183357 9.81713C0.427507 10.0613 0.82335 10.0613 1.06748 9.81713L5.00023 5.88395L8.93298 9.81713C9.17713 10.0613 9.57297 10.0613 9.8171 9.81713C10.0613 9.57298 10.0613 9.17713 9.8171 8.933L5.88394 5.00024Z" fill="white"/>
            </g>
            <defs>
              <clipPath id="clip0_1_240">
                <rect width="10" height="10" fill="white"/>
              </clipPath>
            </defs>
          </svg>
          ''',
                      width: 14,
                      height: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 2, // Çizginin yüksekliği
                color: lightGrey, // Çizginin rengi
              ),

              Row(
                children: [
                  const SizedBox(width: 20),
                  const Text("Describe your video:",
                      style: TextStyle(color: Colors.white, fontSize: 13)),
                  const SizedBox(width: 185),
                  TextButton.icon(
                    onPressed: () {
                      // Butona basıldığında çalışacak kod
                    },
                    icon: SvgPicture.string(
                      '''
    <svg width="10" height="11" viewBox="0 0 10 11" fill="none" xmlns="http://www.w3.org/2000/svg">
      <g clip-path="url(#clip0_1_253)">
        <path d="M5.39123 10.2153C5.24748 10.5493 4.75248 10.5493 4.60873 10.2153L3.40457 7.2127L0.262065 6.06214C-0.0875179 5.92479 -0.0875179 5.45183 0.262065 5.31448L3.40457 4.16392L4.60873 1.16133C4.75248 0.827307 5.24748 0.827307 5.39123 1.16133L6.5954 4.16392L9.7379 5.31448C10.0875 5.45183 10.0875 5.92479 9.7379 6.06214L6.5954 7.2127L5.39123 10.2153ZM1.99082 3.85896L2.76623 3.55401L3.08707 2.80913L1.4529 1.77323C1.09207 1.54551 0.663732 1.95438 0.902065 2.29954L1.99082 3.85896ZM7.23373 3.55401L8.00915 3.85896L9.09748 2.29954C9.33582 1.95477 8.90748 1.54551 8.54665 1.77323L6.91248 2.80913L7.23373 3.55401ZM8.01165 7.51686L7.23373 7.82301L6.91457 8.5639L8.54707 9.59901C8.9079 9.82673 9.33623 9.41786 9.0979 9.0727L8.01207 7.51726L8.01165 7.51686ZM2.76582 7.82301L1.9879 7.51686L0.902065 9.0723C0.663732 9.41707 1.09207 9.82633 1.4529 9.59861L3.0854 8.56351L2.76623 7.82261L2.76582 7.82301Z" fill="#875DEB"/>
      </g>
      <defs>
        <clipPath id="clip0_1_253">
          <rect width="10" height="9.55479" fill="white" transform="translate(0 0.910957)"/>
        </clipPath>
      </defs>
    </svg>
    ''',
                      width: 12,
                      height: 12,
                    ),
                    label: const Text(
                      "Guide",
                      style: TextStyle(
                        color: Color(0xFF7854C4),
                        fontSize: 14,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4), // Buton iç boşlukları
                      backgroundColor: Colors.transparent, // Şeffaf arka plan
                      tapTargetSize: MaterialTapTargetSize
                          .shrinkWrap, // Daha kompakt görünüm
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          maxLines:
                              null, // Çok satırlı hale getirir, textarea gibi
                          minLines: 8, // Minimum satır sayısı
                          decoration: InputDecoration(
                            border: InputBorder
                                .none, // Varsayılan border'ı kaldırıyoruz
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Köşe yuvarlaklığı
                              borderSide: BorderSide(
                                  color:
                                      lightGrey), // Normal durumdaki border rengi
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // Köşe yuvarlaklığı
                              borderSide: BorderSide(
                                  color:
                                      lightGrey), // Focus durumundaki border rengi
                            ),
                            labelText: "Type here...",
                            labelStyle: TextStyle(
                              color: Color(
                                  0xFF424647), // Etiketin rengini buraya istediğin gibi ayarlayabilirsin
                              fontSize:
                                  14, // Etiketin boyutunu değiştirebilirsin
                            ),
                            fillColor: lightGrey, // Arka plan rengi
                            filled: true, // Arka plan rengini etkinleştirir
                            alignLabelWithHint:
                                true, // Etiketin yukarıya sabitlenmesini sağlar
                            contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 15,
                                bottom:
                                    15), // Etiketin sağa kayması için içerik dolgusu
                          ),
                          style: TextStyle(
                            color: Colors.white, // Textfield metin rengi
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Video duration:",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Yatayda kaydırma
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Elemanları sola hizala
                    children: [
                      buildDurationButton(0, "5s"),
                      SizedBox(width: 15),
                      buildDurationButton(1, "10s"),
                      SizedBox(width: 15),
                      buildDurationButton(2, "15s"),
                      SizedBox(width: 15),
                      buildDurationButton(3, "20s"),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(width: 7),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Video size:",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.transparent,
                      minimumSize: const Size(
                          40, 40), // Butonun minimum boyutlarını ayarla
                    ),
                    child: SvgPicture.string(
                      '''
    <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
      <g clip-path="url(#clip0_1_316)">
        <path d="M6 0C4.81331 0 3.65328 0.351894 2.66658 1.01118C1.67989 1.67047 0.910851 2.60754 0.456726 3.7039C0.00259972 4.80026 -0.11622 6.00666 0.115291 7.17054C0.346802 8.33443 0.918247 9.40353 1.75736 10.2426C2.59648 11.0818 3.66558 11.6532 4.82946 11.8847C5.99335 12.1162 7.19975 11.9974 8.2961 11.5433C9.39246 11.0892 10.3295 10.3201 10.9888 9.33342C11.6481 8.34673 12 7.18669 12 6C11.9983 4.40923 11.3656 2.88411 10.2407 1.75926C9.1159 0.634414 7.59077 0.00172054 6 0ZM6 11C5.0111 11 4.0444 10.7068 3.22215 10.1573C2.39991 9.60794 1.75904 8.82705 1.38061 7.91342C1.00217 6.99979 0.90315 5.99445 1.09608 5.02455C1.289 4.05464 1.76521 3.16373 2.46447 2.46447C3.16373 1.7652 4.05465 1.289 5.02455 1.09607C5.99446 0.903148 6.99979 1.00216 7.91342 1.3806C8.82705 1.75904 9.60794 2.3999 10.1574 3.22215C10.7068 4.04439 11 5.01109 11 6C10.9985 7.32564 10.4713 8.59656 9.53393 9.53393C8.59656 10.4713 7.32564 10.9985 6 11Z" fill="#875DEB"/>
        <path d="M6.3585 2.53151C6.07016 2.47897 5.77381 2.49045 5.4904 2.56513C5.20699 2.63981 4.94345 2.77586 4.71845 2.96366C4.49344 3.15146 4.31246 3.38642 4.18831 3.65191C4.06415 3.9174 3.99987 4.20693 4 4.50001C4 4.63262 4.05268 4.75979 4.14645 4.85356C4.24022 4.94733 4.36739 5.00001 4.5 5.00001C4.63261 5.00001 4.75979 4.94733 4.85355 4.85356C4.94732 4.75979 5 4.63262 5 4.50001C4.99987 4.3529 5.03221 4.20757 5.0947 4.07439C5.15718 3.94121 5.24829 3.82345 5.36151 3.72952C5.47473 3.63559 5.60728 3.5678 5.74971 3.53098C5.89214 3.49416 6.04094 3.48922 6.1855 3.51651C6.38302 3.55485 6.56463 3.6512 6.70712 3.79325C6.84962 3.9353 6.94654 4.11661 6.9855 4.31401C7.02485 4.52121 6.99768 4.73555 6.90788 4.92638C6.81808 5.11721 6.67024 5.27476 6.4855 5.37651C6.17958 5.55374 5.92679 5.80977 5.75346 6.11791C5.58013 6.42605 5.49261 6.77504 5.5 7.12851V7.50001C5.5 7.63262 5.55268 7.75979 5.64645 7.85356C5.74022 7.94733 5.86739 8.00001 6 8.00001C6.13261 8.00001 6.25979 7.94733 6.35355 7.85356C6.44732 7.75979 6.5 7.63262 6.5 7.50001V7.12851C6.49373 6.95451 6.5334 6.78194 6.61503 6.62815C6.69667 6.47437 6.81737 6.34481 6.965 6.25251C7.32726 6.05354 7.61898 5.74724 7.80004 5.37571C7.98111 5.00418 8.04263 4.58569 7.97614 4.17777C7.90965 3.76985 7.71842 3.39255 7.42875 3.09776C7.13908 2.80296 6.76519 2.60514 6.3585 2.53151Z" fill="#875DEB"/>
        <path d="M6.5 9C6.5 8.72386 6.27614 8.5 6 8.5C5.72386 8.5 5.5 8.72386 5.5 9C5.5 9.27614 5.72386 9.5 6 9.5C6.27614 9.5 6.5 9.27614 6.5 9Z" fill="#875DEB"/>
      </g>
      <defs>
        <clipPath id="clip0_1_316">
          <rect width="12" height="12" fill="white"/>
        </clipPath>
      </defs>
    </svg>
    ''',
                      width: 12,
                      height: 12,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Yatayda kaydırma
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Elemanları sola hizala
                    children: [
                      buildDurationButton2(0, "9:21"),
                      SizedBox(width: 15),
                      buildDurationButton2(1, "9:16"),
                      SizedBox(width: 15),
                      buildDurationButton2(2, "3:4"),
                      SizedBox(width: 15),
                      buildDurationButton2(3, "1:1"),
                      SizedBox(width: 15),
                      buildDurationButton2(4, "1:1"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  SizedBox(width: 7),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Loop:",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.transparent,
                      minimumSize: const Size(
                          40, 40), // Butonun minimum boyutlarını ayarla
                    ),
                    child: SvgPicture.string(
                      '''
    <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
      <g clip-path="url(#clip0_1_316)">
        <path d="M6 0C4.81331 0 3.65328 0.351894 2.66658 1.01118C1.67989 1.67047 0.910851 2.60754 0.456726 3.7039C0.00259972 4.80026 -0.11622 6.00666 0.115291 7.17054C0.346802 8.33443 0.918247 9.40353 1.75736 10.2426C2.59648 11.0818 3.66558 11.6532 4.82946 11.8847C5.99335 12.1162 7.19975 11.9974 8.2961 11.5433C9.39246 11.0892 10.3295 10.3201 10.9888 9.33342C11.6481 8.34673 12 7.18669 12 6C11.9983 4.40923 11.3656 2.88411 10.2407 1.75926C9.1159 0.634414 7.59077 0.00172054 6 0ZM6 11C5.0111 11 4.0444 10.7068 3.22215 10.1573C2.39991 9.60794 1.75904 8.82705 1.38061 7.91342C1.00217 6.99979 0.90315 5.99445 1.09608 5.02455C1.289 4.05464 1.76521 3.16373 2.46447 2.46447C3.16373 1.7652 4.05465 1.289 5.02455 1.09607C5.99446 0.903148 6.99979 1.00216 7.91342 1.3806C8.82705 1.75904 9.60794 2.3999 10.1574 3.22215C10.7068 4.04439 11 5.01109 11 6C10.9985 7.32564 10.4713 8.59656 9.53393 9.53393C8.59656 10.4713 7.32564 10.9985 6 11Z" fill="#875DEB"/>
        <path d="M6.3585 2.53151C6.07016 2.47897 5.77381 2.49045 5.4904 2.56513C5.20699 2.63981 4.94345 2.77586 4.71845 2.96366C4.49344 3.15146 4.31246 3.38642 4.18831 3.65191C4.06415 3.9174 3.99987 4.20693 4 4.50001C4 4.63262 4.05268 4.75979 4.14645 4.85356C4.24022 4.94733 4.36739 5.00001 4.5 5.00001C4.63261 5.00001 4.75979 4.94733 4.85355 4.85356C4.94732 4.75979 5 4.63262 5 4.50001C4.99987 4.3529 5.03221 4.20757 5.0947 4.07439C5.15718 3.94121 5.24829 3.82345 5.36151 3.72952C5.47473 3.63559 5.60728 3.5678 5.74971 3.53098C5.89214 3.49416 6.04094 3.48922 6.1855 3.51651C6.38302 3.55485 6.56463 3.6512 6.70712 3.79325C6.84962 3.9353 6.94654 4.11661 6.9855 4.31401C7.02485 4.52121 6.99768 4.73555 6.90788 4.92638C6.81808 5.11721 6.67024 5.27476 6.4855 5.37651C6.17958 5.55374 5.92679 5.80977 5.75346 6.11791C5.58013 6.42605 5.49261 6.77504 5.5 7.12851V7.50001C5.5 7.63262 5.55268 7.75979 5.64645 7.85356C5.74022 7.94733 5.86739 8.00001 6 8.00001C6.13261 8.00001 6.25979 7.94733 6.35355 7.85356C6.44732 7.75979 6.5 7.63262 6.5 7.50001V7.12851C6.49373 6.95451 6.5334 6.78194 6.61503 6.62815C6.69667 6.47437 6.81737 6.34481 6.965 6.25251C7.32726 6.05354 7.61898 5.74724 7.80004 5.37571C7.98111 5.00418 8.04263 4.58569 7.97614 4.17777C7.90965 3.76985 7.71842 3.39255 7.42875 3.09776C7.13908 2.80296 6.76519 2.60514 6.3585 2.53151Z" fill="#875DEB"/>
        <path d="M6.5 9C6.5 8.72386 6.27614 8.5 6 8.5C5.72386 8.5 5.5 8.72386 5.5 9C5.5 9.27614 5.72386 9.5 6 9.5C6.27614 9.5 6.5 9.27614 6.5 9Z" fill="#875DEB"/>
      </g>
      <defs>
        <clipPath id="clip0_1_316">
          <rect width="12" height="12" fill="white"/>
        </clipPath>
      </defs>
    </svg>
    ''',
                      width: 12,
                      height: 12,
                    ),
                  ),
                  SizedBox(width: 225),
                  GestureDetector(
                    onTap: () {
                      _toggleButton1();
                      HapticFeedback.lightImpact(); // Titreşim efekti ekliyoruz
                    },
                    child: Transform.scale(
                      scale: 0.8, // Boyut küçültme oranı
                      child: Container(
                        width: 60, // Dış çerçeve genişliği
                        height: 30, // Dış çerçeve yüksekliği
                        decoration: BoxDecoration(
                          color: switch1
                              ? Color(0xFF27713B)
                              : lightGrey, // Arka plan rengi
                          borderRadius:
                              BorderRadius.circular(30), // Yuvarlak dış çerçeve
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              2), // Yuvarlak kısmın dış çerçeveden uzaklığı
                          child: AnimatedAlign(
                            alignment: switch1
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              width: 26, // Yuvarlak kısmın genişliği
                              height: 26, // Yuvarlak kısmın yüksekliği
                              decoration: BoxDecoration(
                                color: switch1
                                    ? Color(0xFF34C759)
                                    : Color(
                                        0xFF7854C4), // Yuvarlak kısmın rengi
                                shape: BoxShape.circle, // Yuvarlak şekil
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(width: 7),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Sounds:",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      backgroundColor: Colors.transparent,
                      minimumSize: const Size(
                          40, 40), // Butonun minimum boyutlarını ayarla
                    ),
                    child: SvgPicture.string(
                      '''
    <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
      <g clip-path="url(#clip0_1_316)">
        <path d="M6 0C4.81331 0 3.65328 0.351894 2.66658 1.01118C1.67989 1.67047 0.910851 2.60754 0.456726 3.7039C0.00259972 4.80026 -0.11622 6.00666 0.115291 7.17054C0.346802 8.33443 0.918247 9.40353 1.75736 10.2426C2.59648 11.0818 3.66558 11.6532 4.82946 11.8847C5.99335 12.1162 7.19975 11.9974 8.2961 11.5433C9.39246 11.0892 10.3295 10.3201 10.9888 9.33342C11.6481 8.34673 12 7.18669 12 6C11.9983 4.40923 11.3656 2.88411 10.2407 1.75926C9.1159 0.634414 7.59077 0.00172054 6 0ZM6 11C5.0111 11 4.0444 10.7068 3.22215 10.1573C2.39991 9.60794 1.75904 8.82705 1.38061 7.91342C1.00217 6.99979 0.90315 5.99445 1.09608 5.02455C1.289 4.05464 1.76521 3.16373 2.46447 2.46447C3.16373 1.7652 4.05465 1.289 5.02455 1.09607C5.99446 0.903148 6.99979 1.00216 7.91342 1.3806C8.82705 1.75904 9.60794 2.3999 10.1574 3.22215C10.7068 4.04439 11 5.01109 11 6C10.9985 7.32564 10.4713 8.59656 9.53393 9.53393C8.59656 10.4713 7.32564 10.9985 6 11Z" fill="#875DEB"/>
        <path d="M6.3585 2.53151C6.07016 2.47897 5.77381 2.49045 5.4904 2.56513C5.20699 2.63981 4.94345 2.77586 4.71845 2.96366C4.49344 3.15146 4.31246 3.38642 4.18831 3.65191C4.06415 3.9174 3.99987 4.20693 4 4.50001C4 4.63262 4.05268 4.75979 4.14645 4.85356C4.24022 4.94733 4.36739 5.00001 4.5 5.00001C4.63261 5.00001 4.75979 4.94733 4.85355 4.85356C4.94732 4.75979 5 4.63262 5 4.50001C4.99987 4.3529 5.03221 4.20757 5.0947 4.07439C5.15718 3.94121 5.24829 3.82345 5.36151 3.72952C5.47473 3.63559 5.60728 3.5678 5.74971 3.53098C5.89214 3.49416 6.04094 3.48922 6.1855 3.51651C6.38302 3.55485 6.56463 3.6512 6.70712 3.79325C6.84962 3.9353 6.94654 4.11661 6.9855 4.31401C7.02485 4.52121 6.99768 4.73555 6.90788 4.92638C6.81808 5.11721 6.67024 5.27476 6.4855 5.37651C6.17958 5.55374 5.92679 5.80977 5.75346 6.11791C5.58013 6.42605 5.49261 6.77504 5.5 7.12851V7.50001C5.5 7.63262 5.55268 7.75979 5.64645 7.85356C5.74022 7.94733 5.86739 8.00001 6 8.00001C6.13261 8.00001 6.25979 7.94733 6.35355 7.85356C6.44732 7.75979 6.5 7.63262 6.5 7.50001V7.12851C6.49373 6.95451 6.5334 6.78194 6.61503 6.62815C6.69667 6.47437 6.81737 6.34481 6.965 6.25251C7.32726 6.05354 7.61898 5.74724 7.80004 5.37571C7.98111 5.00418 8.04263 4.58569 7.97614 4.17777C7.90965 3.76985 7.71842 3.39255 7.42875 3.09776C7.13908 2.80296 6.76519 2.60514 6.3585 2.53151Z" fill="#875DEB"/>
        <path d="M6.5 9C6.5 8.72386 6.27614 8.5 6 8.5C5.72386 8.5 5.5 8.72386 5.5 9C5.5 9.27614 5.72386 9.5 6 9.5C6.27614 9.5 6.5 9.27614 6.5 9Z" fill="#875DEB"/>
      </g>
      <defs>
        <clipPath id="clip0_1_316">
          <rect width="12" height="12" fill="white"/>
        </clipPath>
      </defs>
    </svg>
    ''',
                      width: 12,
                      height: 12,
                    ),
                  ),
                  SizedBox(width: 215),
                  GestureDetector(
                    onTap: () {
                      _toggleButton2();
                      HapticFeedback.lightImpact(); // Titreşim efekti ekliyoruz
                    },
                    child: Transform.scale(
                      scale: 0.8, // Boyut küçültme oranı
                      child: Container(
                        width: 60, // Dış çerçeve genişliği
                        height: 30, // Dış çerçeve yüksekliği
                        decoration: BoxDecoration(
                          color: switch2
                              ? Color(0xFF27713B)
                              : lightGrey, // Arka plan rengi
                          borderRadius:
                              BorderRadius.circular(30), // Yuvarlak dış çerçeve
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              2), // Yuvarlak kısmın dış çerçeveden uzaklığı
                          child: AnimatedAlign(
                            alignment: switch2
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              width: 26, // Yuvarlak kısmın genişliği
                              height: 26, // Yuvarlak kısmın yüksekliği
                              decoration: BoxDecoration(
                                color: switch2
                                    ? Color(0xFF34C759)
                                    : Color(
                                        0xFF7854C4), // Yuvarlak kısmın rengi
                                shape: BoxShape.circle, // Yuvarlak şekil
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    backgroundColor: Color(0xFF7854C4),
                    onPressed: () {},
                    child: SvgPicture.string(
                      '''<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M7.13334 1.75C6.58787 0.590186 5.20547 0.0921863 4.04569 0.637655C3.55669 0.867655 3.16331 1.26103 2.93334 1.75H1C0.447719 1.75 0 2.19772 0 2.75C0 3.30228 0.447719 3.75 1 3.75H2.93C3.47547 4.90981 4.85787 5.40781 6.01766 4.86234C6.50663 4.63237 6.9 4.23897 7.13 3.75H15C15.5523 3.75 16 3.30228 16 2.75C16 2.19772 15.5523 1.75 15 1.75H7.13334Z" fill="white"/>
      <path d="M10.97 5.66663C10.0711 5.66822 9.25341 6.18722 8.86934 6.99997H1C0.447719 6.99997 0 7.44769 0 7.99997C0 8.55225 0.447719 8.99997 1 8.99997H8.86666C9.41212 10.1598 10.7945 10.6578 11.9543 10.1123C12.4433 9.88235 12.8367 9.48894 13.0667 8.99997H15C15.5523 8.99997 16 8.55225 16 7.99997C16 7.44769 15.5523 6.99997 15 6.99997H13.07C12.686 6.18744 11.8687 5.6685 10.97 5.66663Z" fill="white"/>
      <path d="M5.03 10.9166C4.13131 10.9185 3.31397 11.4374 2.93 12.25H1C0.447719 12.25 0 12.6977 0 13.25C0 13.8023 0.447719 14.25 1 14.25H2.93C3.47547 15.4098 4.85787 15.9078 6.01766 15.3623C6.50663 15.1323 6.9 14.7389 7.13 14.25H15C15.5523 14.25 16 13.8023 16 13.25C16 12.6977 15.5523 12.25 15 12.25H7.13334C6.74884 11.4364 5.92988 10.9172 5.03 10.9166Z" fill="white"/>
    </svg>''',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Container(
                    width:
                        250, // Genişlik değeri, ihtiyaca göre değiştirebilirsiniz
                    height:
                        56, // Yükseklik değeri, ihtiyaca göre değiştirebilirsiniz
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF7854C4),
                      onPressed: null,
                      child: Text(
                        "Generate Video (2)",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors
                                .white), // Metin stilini ayarlayabilirsiniz
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDurationButton(int index, String label) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _scale1 = 1.1; // Buton üzerine gelince büyüme efekti
        });
      },
      onExit: (_) {
        setState(() {
          _scale1 = 1.0; // Buton fareyi çektiğinde eski boyutuna dönsün
        });
      },
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact(); // Titreşim efekti
          setState(() {
            selectedIndex1 = index; // Seçili butonun index'ini değiştir
          });
        },
        child: Transform.scale(
          scale: _scale1, // Hover efekti için butonun büyüklüğünü ayarla
          child: Container(
            width: 79,
            height: 39,
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: selectedIndex1 == index
                    ? Color(0xFF7854C4) // Seçili butonun border rengi
                    : Colors.transparent, // Diğerlerinin border'ı görünmesin
                width: 1.5,
              ),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDurationButton2(int index, String label) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _scale2 = 1.1; // Buton üzerine gelince büyüme efekti
        });
      },
      onExit: (_) {
        setState(() {
          _scale2 = 1.0; // Buton fareyi çektiğinde eski boyutuna dönsün
        });
      },
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact(); // Titreşim efekti
          setState(() {
            selectedIndex2 = index; // Seçili butonun index'ini değiştir
          });
        },
        child: Transform.scale(
          scale: _scale2, // Hover efekti için butonun büyüklüğünü ayarla
          child: Container(
            width: 79,
            height: 39,
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: selectedIndex2 == index
                    ? Color(0xFF7854C4) // Seçili butonun border rengi
                    : Colors.transparent, // Diğerlerinin border'ı görünmesin
                width: 1.5,
              ),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

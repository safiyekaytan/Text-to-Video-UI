import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug banner'ı kaldırır
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

late double screenWidth;
late double screenHeight;
Color lightGrey = Color(0xFF1F2223);
Color darkGrey = Color(0xFF191D1E);
IconData auto_fix_high = IconData(0xe0bb, fontFamily: 'MaterialIcons');
IconData grid_view_rounded = IconData(0xf7c4, fontFamily: 'MaterialIcons');

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
Row barIcon = Row(
  mainAxisSize: MainAxisSize.min, // Minimum alanda yerleştirme
  children: [
    Container(
      width: 2, // Kısa çubuk
      height: 4, // Çubuğun yüksekliği
      color: Colors.white, // Çubuğun rengi
    ),
    SizedBox(width: 2), // Çubuklar arasındaki boşluk
    Container(
      width: 2, // Uzun çubuk
      height: 7,
      color: Colors.white,
    ),
    SizedBox(width: 2),
    Container(
      width: 2, // Kısa çubuk
      height: 4,
      color: Colors.white,
    ),
  ],
);
Row voiser = Row(
  children: [
    SvgPicture.string(
      '''<svg width="86" height="24" viewBox="0 0 86 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M17.7148 6.69902H15.2514C14.9192 6.69902 14.6147 6.8928 14.4763 7.19731L9.27261 18.7964L4.0412 7.19731C3.9028 6.8928 3.59833 6.69902 3.26617 6.69902H0.830383C0.359833 6.69902 0 7.0589 0 7.52951C0 7.66792 0.0276794 7.77865 0.0830383 7.88938L6.53235 22.1737C7.03058 23.2534 8.11007 23.9454 9.30029 23.9454C10.4905 23.9454 11.57 23.2534 12.0682 22.146L18.4899 7.8617C18.6836 7.44646 18.5175 6.94817 18.1024 6.75439C17.964 6.7267 17.8256 6.69902 17.7148 6.69902Z" fill="white"/>
<path d="M63.552 18.797C65.019 20.0981 67.1504 20.4026 68.9218 19.5721C70.1397 19.0185 71.0532 17.9665 71.496 16.7208L75.2051 18.0772C73.572 22.7003 68.5343 25.1087 63.9119 23.5031C61.6698 22.7003 59.8153 21.0393 58.8188 18.88C56.7152 14.4508 58.5974 9.16337 63.0261 7.08716C66.8182 5.28777 71.3299 6.39509 73.8765 9.71703C74.6792 10.769 75.2604 11.9593 75.5372 13.2604L63.552 18.797ZM70.1397 11.4057C68.0915 9.6063 64.9914 9.77239 63.1645 11.8209C62.3341 12.7621 61.8636 14.0079 61.9189 15.2536L70.1397 11.4057Z" fill="white"/>
<path d="M11.8191 20.2082C10.795 20.2082 9.8262 19.6823 9.27261 18.7964V18.7687L4.0412 7.19731C3.9028 6.8928 3.59833 6.69902 3.26617 6.69902H0.830383C0.359833 6.69902 0 7.0589 0 7.52951C0 7.66792 0.0276794 7.77865 0.0830383 7.88938L6.53235 22.1737C7.22433 23.6963 9.05118 24.3607 10.5735 23.6686C11.2379 23.3641 11.7638 22.8381 12.0682 22.1737L13.0647 19.9314C12.6495 20.1252 12.2343 20.2082 11.8191 20.2082Z" fill="white"/>
<path d="M26.9875 6.22852C22.0882 6.22852 18.13 10.1872 18.13 15.087C18.13 19.9869 22.0882 23.9455 26.9875 23.9455C31.8867 23.9455 35.8449 19.9869 35.8449 15.087C35.8449 10.2148 31.8867 6.22852 26.9875 6.22852ZM26.9875 20.0423C24.2749 20.0423 22.0605 17.8276 22.0605 15.1147C22.0605 12.4018 24.2749 10.1872 26.9875 10.1872C29.7 10.1872 31.9144 12.4018 31.9144 15.1147C31.9144 17.8276 29.7 20.0423 26.9875 20.0423Z" fill="white"/>
<path d="M38.3361 10.2983H40.5507C41.0213 10.2983 41.4089 10.6859 41.4089 11.1565V22.7003C41.4089 23.1709 41.0213 23.5584 40.5507 23.5584H38.3361C37.8655 23.5584 37.4779 23.1709 37.4779 22.7003V11.1288C37.5056 10.6582 37.8655 10.2983 38.3361 10.2983Z" fill="white"/>
<path d="M34.9869 1.55029H36.0942C36.3156 1.55029 36.5094 1.74407 36.5094 1.96554V5.42589C36.5094 5.64735 36.3156 5.84113 36.0942 5.84113H34.9869C34.7654 5.84113 34.5716 5.64735 34.5716 5.42589V1.96554C34.5716 1.74407 34.7654 1.55029 34.9869 1.55029Z" fill="white"/>
<path d="M38.8897 0H39.997C40.2185 0 40.4123 0.19378 40.4123 0.415243V6.97608C40.4123 7.19754 40.2185 7.39132 39.997 7.39132H38.8897C38.6682 7.39132 38.4745 7.19754 38.4745 6.97608V0.415243C38.4745 0.19378 38.6682 0 38.8897 0Z" fill="white"/>
<path d="M42.7924 1.55029H43.8997C44.1212 1.55029 44.315 1.74407 44.315 1.96554V5.42589C44.315 5.64735 44.1212 5.84113 43.8997 5.84113H42.7924C42.5709 5.84113 42.3772 5.64735 42.3772 5.42589V1.96554C42.3772 1.74407 42.5709 1.55029 42.7924 1.55029Z" fill="white"/>
<path d="M78.1392 6.69922H80.3538C80.8244 6.69922 81.1843 7.08678 81.1843 7.5297V22.6445C81.1843 23.1151 80.7967 23.475 80.3538 23.475H78.1392C77.6686 23.475 77.3087 23.0875 77.3087 22.6445V7.55739C77.281 7.08678 77.6686 6.69922 78.1392 6.69922Z" fill="white"/>
<path d="M85.0589 6.31201C80.6302 6.86567 77.3087 10.6305 77.3087 15.0875H81.2392C81.2392 12.4299 83.3428 10.243 86 10.1599V7.17018C86 6.69957 85.6125 6.31201 85.1697 6.31201C85.1143 6.31201 85.0866 6.31201 85.0589 6.31201Z" fill="white"/>
<path d="M49.8783 23.9734C53.1722 23.9734 56.6875 22.6169 56.6875 18.769C56.6875 15.0318 53.4767 14.2013 50.9025 13.5093C49.1587 13.0386 47.664 12.6511 47.664 11.2946C47.664 10.4365 48.2729 9.46756 50.0167 9.46756C51.0962 9.43987 52.1204 9.93816 52.757 10.824L55.9955 9.08C54.6115 7.25293 52.5356 6.25635 50.0167 6.25635C47.0827 6.25635 43.6505 7.61281 43.6505 11.4607C43.6505 14.6442 46.2523 15.6131 49.4078 16.499C51.1516 16.9973 52.674 17.4125 52.674 18.7413C52.674 19.3226 52.3972 20.6791 49.8783 20.6791C48.3283 20.6791 47.1104 20.0424 46.3907 18.852L43.0969 20.7345C44.4255 22.8661 46.6952 23.9734 49.8783 23.9734Z" fill="white"/>
</svg>
''',
      width: 30,
      height: 30,
    ),
  ],
);
badges.Badge badgeGift = badges.Badge(
  badgeStyle: badges.BadgeStyle(
    padding: const EdgeInsets.all(9), // Badge'in büyüklüğü
    badgeColor: Color(0xFF7254C5), // Arka plan şeffaflığı
    elevation: 0, // Gölgelendirme seviyesi
    borderRadius: BorderRadius.circular(8), // Köşe yuvarlaklığı
  ),
  badgeContent: SvgPicture.string(
    '''<svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M1 7.50002H5.5V12H3.5C2.83696 12 2.20107 11.7366 1.73223 11.2678C1.26339 10.7989 1 10.1631 1 9.50002V7.50002ZM12 5.50002C12 5.76523 11.8946 6.01959 11.7071 6.20712C11.5196 6.39466 11.2652 6.50002 11 6.50002H6.5V4.47852C6.332 4.49152 6.1645 4.50002 6 4.50002C5.8355 4.50002 5.668 4.49152 5.5 4.47852V6.50002H1C0.734784 6.50002 0.48043 6.39466 0.292893 6.20712C0.105357 6.01959 0 5.76523 0 5.50002C0 4.96958 0.210714 4.46087 0.585786 4.0858C0.960859 3.71073 1.46957 3.50002 2 3.50002H2.869C2.5863 3.25081 2.3619 2.94245 2.21172 2.59681C2.06154 2.25117 1.98926 1.87672 2 1.50002C2 1.36741 2.05268 1.24023 2.14645 1.14646C2.24021 1.05269 2.36739 1.00002 2.5 1.00002C2.63261 1.00002 2.75979 1.05269 2.85355 1.14646C2.94732 1.24023 3 1.36741 3 1.50002C3 2.81102 4.1855 3.26502 5.087 3.42052C4.75426 2.83054 4.55395 2.1752 4.5 1.50002C4.5 1.10219 4.65804 0.72066 4.93934 0.439355C5.22064 0.158051 5.60218 1.52588e-05 6 1.52588e-05C6.39782 1.52588e-05 6.77936 0.158051 7.06066 0.439355C7.34196 0.72066 7.5 1.10219 7.5 1.50002C7.44605 2.1752 7.24574 2.83054 6.913 3.42052C7.8145 3.26502 9 2.81102 9 1.50002C9 1.36741 9.05268 1.24023 9.14645 1.14646C9.24021 1.05269 9.36739 1.00002 9.5 1.00002C9.63261 1.00002 9.75979 1.05269 9.85355 1.14646C9.94732 1.24023 10 1.36741 10 1.50002C10.0107 1.87672 9.93846 2.25117 9.78828 2.59681C9.6381 2.94245 9.4137 3.25081 9.131 3.50002H10C10.5304 3.50002 11.0391 3.71073 11.4142 4.0858C11.7893 4.46087 12 4.96958 12 5.50002ZM5.5 1.50002C5.56036 2.03143 5.73063 2.54447 6 3.00652C6.26937 2.54447 6.43964 2.03143 6.5 1.50002C6.5 1.36741 6.44732 1.24023 6.35355 1.14646C6.25979 1.05269 6.13261 1.00002 6 1.00002C5.86739 1.00002 5.74021 1.05269 5.64645 1.14646C5.55268 1.24023 5.5 1.36741 5.5 1.50002ZM6.5 12H8.5C8.8283 12 9.15339 11.9354 9.45671 11.8097C9.76002 11.6841 10.0356 11.4999 10.2678 11.2678C10.4999 11.0356 10.6841 10.76 10.8097 10.4567C10.9353 10.1534 11 9.82832 11 9.50002V7.50002H6.5V12Z" fill="white"/>
    </svg>''',
    width: 16, // İkon boyutu
    height: 16, // İkon boyutu
  ),
);
badges.Badge badgeSettings = badges.Badge(
  badgeStyle: badges.BadgeStyle(
    padding: const EdgeInsets.all(9), // Badge'in büyüklüğü
    badgeColor: Color(0xFF7254C5), // Arka plan şeffaflığı
    elevation: 0, // Gölgelendirme seviyesi
    borderRadius: BorderRadius.circular(8), // Köşe yuvarlaklığı
  ),
  badgeContent: SvgPicture.string(
    '''<svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M0.803532 9.00002C1.21711 9.71781 2.13429 9.96442 2.85209 9.55084C2.85258 9.55056 2.85305 9.55028 2.85354 9.55L3.07603 9.42149C3.49603 9.78084 3.9788 10.0595 4.50002 10.2435V10.5C4.50002 11.3284 5.1716 12 6.00002 12C6.82845 12 7.50002 11.3284 7.50002 10.5V10.2435C8.02132 10.0592 8.50411 9.78023 8.92402 9.42051L9.14752 9.54951C9.86548 9.96372 10.7833 9.71748 11.1975 8.9995C11.6117 8.28154 11.3655 7.3637 10.6475 6.94949L10.4255 6.8215C10.5255 6.27773 10.5255 5.72029 10.4255 5.17649L10.6475 5.0485C11.3655 4.63429 11.6117 3.71648 11.1975 2.99849C10.7833 2.28053 9.8655 2.03427 9.14752 2.44848L8.92502 2.57699C8.5046 2.21809 8.02151 1.93994 7.50002 1.75652V1.50002C7.50002 0.671593 6.82845 1.52588e-05 6.00002 1.52588e-05C5.1716 1.52588e-05 4.50002 0.671593 4.50002 1.50002V1.75652C3.97873 1.9408 3.49594 2.2198 3.07603 2.57952L2.85253 2.45003C2.13455 2.0358 1.21674 2.28205 0.802525 3.00002C0.388314 3.71798 0.634548 4.63581 1.35253 5.05002L1.57453 5.17802C1.47459 5.72179 1.47459 6.27923 1.57453 6.82302L1.35253 6.95101C0.63654 7.36633 0.391103 8.28236 0.803532 9.00002ZM6.00002 4.00002C7.10459 4.00002 8.00002 4.89545 8.00002 6.00002C8.00002 7.10458 7.10459 8.00001 6.00002 8.00001C4.89546 8.00001 4.00003 7.10458 4.00003 6.00002C4.00003 4.89545 4.89546 4.00002 6.00002 4.00002Z" fill="white"/>
    </svg>''',
    width: 16, // İkon boyutu
    height: 16, // İkon boyutu
  ),
);
Container pro = Container(
  padding: EdgeInsets.symmetric(
      horizontal: 16, vertical: 7), // Yatayda genişlik, dikeyde kısalık
  decoration: BoxDecoration(
    color: Color(0xFF191D1E), // Badge'in arka plan rengi
    borderRadius: BorderRadius.circular(25), // Yuvarlatılmış köşeler
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min, // İçerik boyutunu minimuma ayarlar
    children: [
      Text(
        "Pro",
        style: TextStyle(
            color: Colors.white,
            fontSize: 14), // Yazıyı beyaz ve uygun boyutta yapar
      ),
      SizedBox(width: 8), // Yazı ile ikon arasında boşluk
      SvgPicture.string(
        '''<svg width="15" height="13" viewBox="0 0 15 13" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M13.3169 2.16252C13.1512 2.04814 12.9406 2.01877 12.7531 2.08627C12.6912 2.10814 11.5737 2.51127 10.7862 3.51627C10.1431 2.37127 9.35936 1.42877 7.80249 0.570641C7.61561 0.466891 7.38686 0.466891 7.19999 0.570641C5.64686 1.42377 4.87936 2.34189 4.22061 3.51439C3.43249 2.50439 2.30624 2.10689 2.24374 2.08564C2.05624 2.02127 1.84749 2.04939 1.68374 2.16377C0.687485 2.85689 0.62561 6.71064 0.62561 6.74877C0.62561 10.0306 1.37374 11.1856 1.45874 11.3063C1.53186 11.41 1.63499 11.4888 1.75436 11.5325C1.86249 11.5725 4.44624 12.5088 7.50061 12.5088C10.555 12.5088 13.1381 11.5725 13.2462 11.5325C13.3681 11.4881 13.4725 11.4063 13.5462 11.3C13.6312 11.1763 14.375 10.0006 14.375 6.74877C14.375 6.71002 14.3125 2.85627 13.3169 2.16377V2.16252Z" fill="#FFD800"/>
        </svg>''',
        width: 16, // İkon boyutu
        height: 16, // İkon boyutu
      ),
    ],
  ),
);

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
//ekran boyutları
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              decoration: purpleBackground,
              width: screenWidth,
              height: screenHeight * 0.275,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    voiser,
                    SizedBox(
                      width: 80,
                    ),
                    badgeGift,
                    badgeSettings,
                    pro
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: BoxDecoration(
                color: darkGrey,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        card1,
                        card2,
                        card3,
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        card4,
                        card5,
                        card6,
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    darkGrey.withOpacity(0.0),
                    darkGrey.withOpacity(0.7),
                    darkGrey.withOpacity(1.0),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight,
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 330,
                  ),
                  const Text(
                    "Nothing here yet.",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Generate your first video.",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF9D68F4),
                      shape:
                          BoxShape.circle, // Butonun yuvarlak olmasını sağlar
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                      icon: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [gridButton, fixButton, historyButton],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container historyButton = Container(
  padding: EdgeInsets.symmetric(
      horizontal: 16, vertical: 8), // Yatayda genişlik, dikeyde kısalık
  decoration: BoxDecoration(
    color: lightGrey, // Badge'in arka plan rengi
    borderRadius: BorderRadius.circular(25), // Yuvarlatılmış köşeler
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min, // İçerik boyutunu minimuma ayarlar
    children: [
      SvgPicture.string(
        '''
                        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_1_373)">
<path d="M6.99997 0C5.28772 0.00503364 3.63634 0.635709 2.35664 1.77333L1.57906 0.99575C1.49748 0.914194 1.39355 0.858657 1.28041 0.83616C1.16727 0.813662 1.05 0.825214 0.943424 0.869354C0.836849 0.913495 0.745754 0.988243 0.681655 1.08415C0.617556 1.18005 0.58333 1.29281 0.583306 1.40817V4.08333C0.583306 4.23804 0.644764 4.38642 0.75416 4.49581C0.863556 4.60521 1.01193 4.66667 1.16664 4.66667H3.84181C3.95716 4.66664 4.06992 4.63242 4.16582 4.56832C4.26173 4.50422 4.33648 4.41312 4.38062 4.30655C4.42476 4.19997 4.43631 4.0827 4.41381 3.96956C4.39132 3.85643 4.33578 3.7525 4.25422 3.67092L3.59214 3.00883C4.36476 2.34881 5.31233 1.9272 6.31986 1.79514C7.3274 1.66308 8.35161 1.82626 9.26824 2.26487C10.1849 2.70348 10.9545 3.39867 11.4838 4.26611C12.013 5.13354 12.2792 6.13593 12.25 7.15167C12.2124 8.46409 11.6845 9.71481 10.7703 10.6572C9.85611 11.5996 8.62198 12.1652 7.3113 12.2425C6.00062 12.3198 4.70855 11.9032 3.68987 11.0749C2.6712 10.2465 1.99988 9.06657 1.80831 7.76767C1.78095 7.55647 1.67801 7.36233 1.51853 7.2212C1.35905 7.08006 1.15384 7.00148 0.940889 7C0.817318 6.9984 0.69483 7.0232 0.581606 7.07272C0.468381 7.12224 0.367029 7.19536 0.284318 7.28718C0.201607 7.379 0.139442 7.48742 0.101975 7.60518C0.064509 7.72295 0.0526041 7.84735 0.0670557 7.97008C0.309845 9.68857 1.18145 11.2559 2.5132 12.3688C3.84496 13.4817 5.54219 14.0611 7.27647 13.9947C9.03098 13.9102 10.6911 13.1753 11.9332 11.9332C13.1752 10.6911 13.9102 9.03101 13.9947 7.2765C14.0309 6.33495 13.8768 5.39578 13.5417 4.51515C13.2065 3.63453 12.6972 2.83053 12.0443 2.15124C11.3913 1.47196 10.608 0.931332 9.74128 0.561703C8.87457 0.192074 7.94221 0.0010315 6.99997 0Z" fill="white"/>
<path d="M6.70831 4.08331C6.47625 4.08331 6.25369 4.1755 6.08959 4.33959C5.9255 4.50369 5.83331 4.72625 5.83331 4.95831V7.46256C5.83338 7.77196 5.95634 8.06865 6.17515 8.2874L7.22106 9.33331C7.38609 9.4927 7.60712 9.5809 7.83654 9.5789C8.06596 9.57691 8.28542 9.48489 8.44765 9.32265C8.60989 9.16042 8.70191 8.94096 8.7039 8.71154C8.7059 8.48212 8.6177 8.26109 8.45831 8.09606L7.58331 7.22106V4.95831C7.58331 4.72625 7.49113 4.50369 7.32703 4.33959C7.16294 4.1755 6.94038 4.08331 6.70831 4.08331Z" fill="white"/>
</g>
<defs>
<clipPath id="clip0_1_373">
<rect width="14" height="14" fill="white"/>
</clipPath>
</defs>
</svg>


                            ''',
        color: Colors.white,
        width: 20,
        height: 20,
      ),
      SizedBox(width: 8), // Yazı ile ikon arasında boşluk
      Text(
        "History",
        style: TextStyle(
            color: Colors.white,
            fontSize: 15), // Yazıyı beyaz ve uygun boyutta yapar
      ),
    ],
  ),
);
Container fixButton = Container(
  padding: EdgeInsets.symmetric(
      horizontal: 25, vertical: 8), // Yatayda genişlik, dikeyde kısalık
  decoration: BoxDecoration(
    color: lightGrey, // Badge'in arka plan rengi
    borderRadius: BorderRadius.circular(25), // Yuvarlatılmış köşeler
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min, // İçerik boyutunu minimuma ayarlar
    children: [
      SvgPicture.string(
        '''<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.51508 8.87599L2.88633 13.5047C2.73073 13.6681 2.54402 13.7987 2.33718 13.8889C2.13034 13.979 1.90757 14.0269 1.68196 14.0296C1.45635 14.0324 1.23247 13.99 1.0235 13.9049C0.814527 13.8198 0.624684 13.6938 0.465143 13.5343C0.305603 13.3747 0.179589 13.1849 0.0945185 12.9759C0.00944812 12.7669 -0.0329596 12.5431 -0.0302087 12.3174C-0.0274578 12.0918 0.0203961 11.8691 0.110537 11.6622C0.200677 11.4554 0.331282 11.2687 0.494666 11.1131L5.12342 6.48433L7.51508 8.87599ZM9.975 4.02499C9.65296 3.7172 9.22464 3.54543 8.77917 3.54543C8.33369 3.54543 7.90537 3.7172 7.58333 4.02499L5.95 5.65833L8.34167 8.04999L9.975 6.41666C10.292 6.09944 10.4701 5.66931 10.4701 5.22083C10.4701 4.77234 10.292 4.34221 9.975 4.02499ZM2.83675 3.00124L3.74092 3.25907L3.99875 4.16324C4.04029 4.30833 4.12793 4.43594 4.24844 4.52679C4.36894 4.61763 4.51575 4.66677 4.66667 4.66677C4.81758 4.66677 4.96439 4.61763 5.08489 4.52679C5.2054 4.43594 5.29305 4.30833 5.33458 4.16324L5.59242 3.25907L6.49658 3.00124C6.64167 2.95971 6.76928 2.87206 6.86013 2.75155C6.95097 2.63105 7.00011 2.48424 7.00011 2.33332C7.00011 2.18241 6.95097 2.0356 6.86013 1.9151C6.76928 1.79459 6.64167 1.70694 6.49658 1.66541L5.59242 1.40758L5.33458 0.503408C5.29305 0.358324 5.2054 0.23071 5.08489 0.139863C4.96439 0.0490167 4.81758 -0.00012207 4.66667 -0.00012207C4.51575 -0.00012207 4.36894 0.0490167 4.24844 0.139863C4.12793 0.23071 4.04029 0.358324 3.99875 0.503408L3.74092 1.40758L2.83675 1.66541C2.69166 1.70694 2.56405 1.79459 2.4732 1.9151C2.38236 2.0356 2.33322 2.18241 2.33322 2.33332C2.33322 2.48424 2.38236 2.63105 2.4732 2.75155C2.56405 2.87206 2.69166 2.95971 2.83675 3.00124ZM9.83675 10.0012L10.7409 10.2591L10.9987 11.1632C11.0403 11.3083 11.1279 11.4359 11.2484 11.5268C11.3689 11.6176 11.5158 11.6668 11.6667 11.6668C11.8176 11.6668 11.9644 11.6176 12.0849 11.5268C12.2054 11.4359 12.293 11.3083 12.3346 11.1632L12.5924 10.2591L13.4966 10.0012C13.6417 9.95971 13.7693 9.87206 13.8601 9.75155C13.951 9.63105 14.0001 9.48424 14.0001 9.33332C14.0001 9.18241 13.951 9.0356 13.8601 8.9151C13.7693 8.79459 13.6417 8.70694 13.4966 8.66541L12.5924 8.40757L12.3346 7.50341C12.293 7.35832 12.2054 7.23071 12.0849 7.13986C11.9644 7.04902 11.8176 6.99988 11.6667 6.99988C11.5158 6.99988 11.3689 7.04902 11.2484 7.13986C11.1279 7.23071 11.0403 7.35832 10.9987 7.50341L10.7409 8.40757L9.83675 8.66541C9.69167 8.70694 9.56405 8.79459 9.4732 8.9151C9.38236 9.0356 9.33322 9.18241 9.33322 9.33332C9.33322 9.48424 9.38236 9.63105 9.4732 9.75155C9.56405 9.87206 9.69167 9.95971 9.83675 10.0012ZM10.3577 2.62499L11.1481 2.85074L11.375 3.64232C11.4119 3.76843 11.4887 3.87917 11.5939 3.95796C11.6991 4.03674 11.8269 4.07933 11.9583 4.07933C12.0897 4.07933 12.2176 4.03674 12.3228 3.95796C12.4279 3.87917 12.5047 3.76843 12.5417 3.64232L12.7674 2.85191L13.559 2.62499C13.6851 2.58806 13.7958 2.51126 13.8746 2.40609C13.9534 2.30093 13.996 2.17306 13.996 2.04166C13.996 1.91026 13.9534 1.78239 13.8746 1.67722C13.7958 1.57206 13.6851 1.49526 13.559 1.45833L12.7686 1.23258L12.5417 0.440992C12.5047 0.314885 12.4279 0.204142 12.3228 0.125358C12.2176 0.0465732 12.0897 0.00399048 11.9583 0.00399048C11.8269 0.00399048 11.6991 0.0465732 11.5939 0.125358C11.4887 0.204142 11.4119 0.314885 11.375 0.440992L11.1493 1.23141L10.3577 1.45833C10.2316 1.49526 10.1208 1.57206 10.042 1.67722C9.96325 1.78239 9.92066 1.91026 9.92066 2.04166C9.92066 2.17306 9.96325 2.30093 10.042 2.40609C10.1208 2.51126 10.2316 2.58806 10.3577 2.62499Z" fill="white"/>
</svg>
''',
        width: 20, // İkon boyutu
        height: 20, // İkon boyutu
      ),
    ],
  ),
);
Container gridButton = Container(
  padding: EdgeInsets.symmetric(
      horizontal: 25, vertical: 8), // Yatayda genişlik, dikeyde kısalık
  decoration: BoxDecoration(
    color: lightGrey, // Badge'in arka plan rengi
    borderRadius: BorderRadius.circular(25), // Yuvarlatılmış köşeler
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min, // İçerik boyutunu minimuma ayarlar
    children: [
      SvgPicture.string(
        '''<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.25 5.25H1.16667C0.52325 5.25 0 4.72675 0 4.08333V2.91667C0 1.30842 1.30842 0 2.91667 0H5.25C5.89342 0 6.41667 0.52325 6.41667 1.16667V4.08333C6.41667 4.72675 5.89342 5.25 5.25 5.25ZM11.0833 14H8.75C8.10658 14 7.58333 13.4767 7.58333 12.8333V9.91667C7.58333 9.27325 8.10658 8.75 8.75 8.75H12.8333C13.4767 8.75 14 9.27325 14 9.91667V11.0833C14 12.6916 12.6916 14 11.0833 14ZM12.8333 7.58333H8.75C8.10658 7.58333 7.58333 7.06008 7.58333 6.41667V1.16667C7.58333 0.52325 8.10658 0 8.75 0H11.0833C12.6916 0 14 1.30842 14 2.91667V6.41667C14 7.06008 13.4767 7.58333 12.8333 7.58333ZM5.25 14H2.91667C1.30842 14 0 12.6916 0 11.0833V7.58333C0 6.93992 0.52325 6.41667 1.16667 6.41667H5.25C5.89342 6.41667 6.41667 6.93992 6.41667 7.58333V12.8333C6.41667 13.4767 5.89342 14 5.25 14Z" fill="white"/>
</svg>

''',
        width: 20, // İkon boyutu
        height: 20, // İkon boyutu
      ),
    ],
  ),
);
Card card1 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.16,
    width: screenWidth * 0.43,
  ),
);
Card card2 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.394,
    width: screenWidth * 0.43,
  ),
);
Card card3 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.145,
    width: screenWidth * 0.43,
  ),
);
Card card4 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.37,
    width: screenWidth * 0.43,
  ),
);
Card card5 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.19,
    width: screenWidth * 0.43,
  ),
);
Card card6 = Card(
  color: lightGrey,
  elevation: 2,
  child: SizedBox(
    height: screenHeight * 0.14,
    width: screenWidth * 0.43,
  ),
);

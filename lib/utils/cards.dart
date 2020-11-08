import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

int seciliIndex = 0;

class _CardsState extends State<Cards> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cardAskDurumu(),
        cardParaDurumu(),
        cardGunlukTavsiye(),
        Card(
          
          child: Padding(
          
            padding: const EdgeInsets.all(8.0),
            child: Text(
              yanitlar[seciliIndex],
              style: TextStyle(
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Card cardAskDurumu() {
    return Card(
      child: ListTile(
        onTap: () {
          setState(() {
            debugPrint("secili index: $seciliIndex");
            seciliIndex = seciliIndex < 5 ? seciliIndex + 1 : seciliIndex = 1;
            return seciliIndex;
          });
        },
        leading: SvgPicture.asset(
          "assets/svg/heart.svg",
          color: Colors.red,
        ),
        title: Text(
          "AŞK DURUMU",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Card cardParaDurumu() {
    return Card(
      child: ListTile(
        onTap: () {
          setState(() {
            debugPrint("secili index: $seciliIndex");
            seciliIndex = seciliIndex > 5 && seciliIndex < 10
                ? seciliIndex + 1
                : seciliIndex = 6;
            return seciliIndex;
          });
        },
        leading: SvgPicture.asset(
          "assets/svg/buy.svg",
          color: Colors.green,
        ),
        title: Text(
          "PARA DURUMU",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Card cardGunlukTavsiye() {
    return Card(
      child: ListTile(
        onTap: () {
          setState(() {
            debugPrint("secili index: $seciliIndex");
            seciliIndex = seciliIndex > 10 && seciliIndex < 15
                ? seciliIndex + 1
                : seciliIndex = 11;
            return seciliIndex;
          });
        },
        leading: SvgPicture.asset(
          "assets/svg/send.svg",
          color: Colors.blue,
        ),
        title: Text(
          "GÜNLÜK TAVSİYE",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

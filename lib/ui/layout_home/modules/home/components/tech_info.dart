import 'package:flutter/material.dart';

import 'mycard.dart';

Widget techInfo() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
              child: myCard("assets/desktop.png", "تطوير تطبيقات سطح المكتب",
                  " يمكننا إنشاء تطبيق سطح المكتب بواجهة مستخدم واضحة بتصاميم ذكية ، ويمكننا أن نجعل نظامك سهلاً وسريعا ودقيقا ويعمل بكفاءة عالية. تدعم أنظمتنا 7 Windows و 8 و 8.1 و 10 و Linux.")),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: myCard("assets/mobile.png", "تطوير تطبيقات الجوال",
                  " يمكننا إنشاء تطبيق Smart Mobile لنظامي Android و IOS ، والذي يمكن تشغيله لجميع الأجهزة ذات الأداء العالي وواجهة المستخدم الواضحة ، لجميع أنواع المنظمات والأشخاص والشركات و يمكننا نشر التطبيق الخاص بك في google play و StoreApp")),
        ],
      ),
      Row(
        children: [
          Expanded(
              child: myCard("assets/web.png", "تطوير المواقع",
                  " يمكننا إنشاء مواقع ويب وتطبيقات ويب ذكية بمواضيع مثالية وأمان عالي المستوى وبيانات دقيقة للغاية مع أداء عالي لجميع أنواع المنظمات والأشخاص والشركات. نحن  نقدم استضافة مواقع لمنتجاتنا مع نطاقات ورسائل بريد إلكتروني مثالية.")),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: myCard(
                  "assets/media.png",
                  "تسويق وسائل الاعلام الاجتماعية",
                  " لدينا فريق تسويق عبر وسائل التواصل الاجتماعي مؤهل تأهيلا عاليا ، لديه القدرة على جعل اسم عملك مثل العلامة التجارية حتى لو تم إنشاؤه مؤخرا . سنجعل هوية عملك على جميع بوابات وسائل التواصل الاجتماعي مثل  twitter و facebook و Instagram و Gmail مع رسائل البريد اليومية.")),
        ],
      ),
      Row(
        children: [
          Expanded(
              child: myCard("assets/paint.png", "تصميم جرافيك / موشن جرافيك",
                  " يمكننا إنشاء تصميم جرافيك عالي الجودة بمفاهيم مرئية خاصة باستخدام البرامج أو  بأيدينا لإنتاج أفضل الأفكار التي نحتاجها في مجال التصميم لدينا ، مثل الإعلانات والكتيبات والمجلات والتقارير .  سنجعل هويتك خاصة وبسيطة وخلاقة.")),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: myCard("assets/database.png", "تحليل قاعدة البيانات",
                  " استخدام احدث الاساليب والمخططات لانشاء قاعدة بيانات منظمة متقنة ، قابلة القابلة للتطوير من خلال تحليل البيانات تحليلا دقيقا.")),
        ],
      ),
      Row(
        children: [
          Expanded(
              child: myCard("assets/servers.png", "أمن الخوادم (السيرفرات )",
                  " نوفر خطط متنوعه لدعم وادارة الخوادم وحمايتها عن طريق فريق عمل محترف لديه الخبرة الطويلة في حماية انظمة التشغيل المختلفة علي الخوادم الداخلية او الخوادم السحابية.")),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: myCard("assets/support.png", "دعم 24/7",
                  " لدينا فريق كامل الموظفين فقط لدعمك ، نحن متواجدون 24 ساعة في اليوم 7 ايام في الاسبوع  هذا الفريق جاهز دائما لحل أي مشكلة تواجهك ، من خلال الإنترنت الفوري ، أو في مكانك إذا كان الأمر ضروريا.  لن نسمح لك أبدا بالحصول على موقف سيء مع منتجنا.")),
        ],
      ),
    ],
  );
}

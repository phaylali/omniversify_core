part of omniversify_core;

/// Hardcoded translations of some words that can be used and have been used in the Omniversify apps, feel free to submit other words for arabic translation, or if you can help adding another language by translating the english words there, that would be great.
class OmniversalTranslations extends Translations {
  OmniversalTranslations(
      this.title, this.titleAR, this.welcome, this.welcomeAR);
  final String title;
  final String titleAR;
  final String welcome;
  final String welcomeAR;
  @override
  Map<String, Map<String, String>> get keys => {
        ///ENGLISH LANGUAGE
        'en_US': {
          'title': title,
          'welcome': welcome,
          'scan_qr': 'Scan QR Code',
          'settings': 'Settings',
          'install_advice':
              'For A Better Experience, Please Install The Official App',
          'follow_link': 'Follow The Link',
          'back': 'Go Back',
          'pause': 'Pause',
          'resume': 'Resume',
          'flash': 'Flash',
          'camera': 'Camera',
          'code_type': 'Code Type',
          'data': 'Data',
          'no_camera_permission': 'You didn\'t allow camera permissions',
          'albourane': 'Albourane',
          'licenses': 'Licenses',
          'privacy': 'Privacy Policy',
          'terms': 'Terms & Conditions',
          'home': 'Home',
          'blog': 'Blog',
          'go_back_home': 'Please go back to the home page or correct the link',
          'error404': 'Page Not Found',
          'print': 'Print',
          'share': 'Share',
          'success_share': 'Successfully Shared',
          'success_print': 'Successfully Printed',
          'ticket_not_found': 'Ticket Not Found',
          'dh': 'Dirham',
          'price': 'Price',
          'date': 'Date',
          'arabic_name': 'Arabic Name',
          'ticket': 'Ticket',
          'tickets': 'Tickets',
          'boat': 'Boat',
          'boats': 'Boats',
          'sailor': 'Sailor',
          'sailors': 'Sailors',
          'number': 'Number',
          'next_language': 'العربية',
          'more_settings': 'More Settings',
          'ad': 'Advertisement',
          'theme': 'Theme',
          'no_achievement_generated': 'No Achievement Generated',
          'no_achievement_generated_save': 'No Achievement Generated To Save',
          'save_achievement': 'Save Generated Achievement',
          'generate_achievement': 'Generate Achievement',
          'preview': 'Preview',
          'achievements': 'Achievements',
          'coming_soon': 'Coming Soon',
          'login': 'Login',
          'logout': 'Logout',
          'register': 'Register',
          'search_sailor': 'Search for a Sailor',
          'search_boat': 'Search for a Boat',
          'search_declaration': 'Search for a Declaration',
          'search_ticket': 'Search for a Ticket',
          'search_expense': 'Search for an Expense',
          'more_results': 'More Results',
          'less_results': 'Less Results',
          'total_sailors': 'Total Sailors',
          'total_boats': 'Total Boats',
          'total_expenses': 'Total Expenses',
          'total_tickets': 'Total Tickets',
          'total_declarations': 'Total Declarations',
          'name': 'Name',
          'first_name': 'First Name',
          'last_name': 'Last Name',
          'registration': 'Registration',
          'id': 'Identification',
          'cnss': 'Social Security',
          'declarations': 'Declarations',
          'phone': 'Phone',
          'owner': 'Owner',
          'region': 'Region',
          'picture': 'Picture',
          'loading': 'Loading',
          'email': 'Email',
          'password': 'Password',
          'no_internet': 'Internet Is Not Working',
          'email_error': 'Email Error',
          'password_error': 'Password Error',
          'success_correction': 'Successfully Corrected',
          'success_registration': 'Successfully Registered',
          'confirm': 'Confirm',
          'confirm_advice': 'Are You Sure About This Step?',
          'success': 'Success',
          'error': 'Error',
          'no': 'No',
          'cancel': 'Cancel',
          'already_exists': 'These Info Already Exits, You Can\'t Add It Twice',
          'delete': 'Delete',
          'test': 'Test',
          'correction': 'Info Correction',
          'zoom': 'Zoom In the Picture',
          'declaration': 'Declaration',
          'reload': 'Reload',
          'source': 'Source',
          'type': 'Type',
          'reason': 'Reason',
          'details': 'Details',
          'add_declaration': 'Add Declaration',
          'add_ticket': 'Add Ticket',
          'add_sailor': 'Add Sailor',
          'add_boat': 'Add Boat',
          'add_expense': 'Add Expense',
          'expenses': 'Expenses',
          'expense': 'Expense',
          'period': 'Period',
          'previous_ticket': 'Previous Ticket',
          '404': 'Doesn\'t Exist',
          'code': 'Code',
          'save': 'Save',
          'bank': 'Bank',
          'inventory': 'Inventory',
          'other': 'Other',
          'salary': 'Salary',
          'sub': 'Subscription',
          'tractor': 'Tractor',
          'office': 'Office',
          'special': 'Special',
          'transport': 'Transport',
          'upload': 'Upload',
          'revenue': 'Revenue',
          'sales': 'Sales',
          'gas': 'Gas',
          'start_date': 'Start Date',
          'end_date': 'End Date',
          'previous_team': 'Previous Team',
          'new_team': 'New Team',
          'success_login': 'Logged In Successfully',
          'fees': 'Fees',
          'amo': 'AMO',
          'taxehalle': 'Tax Halle',
          'taxeregion': 'Tax Region',
          'othercharges': 'Other Charges',
          'teamperc': 'Team Percentage',
          'peage': 'Péage'
        },

        ///ARABIC LANGUAGE
        'ar_MA': {
          'title': titleAR,
          'welcome': welcomeAR,
          'scan_qr': 'قراءة الكود',
          'settings': 'الاعدادات',
          'install_advice': 'لتجربة أفضل المرجو تحميل التطبيق الرسمي',
          'follow_link': 'اذهب إلى الرابط',
          'back': 'الرجوع',
          'pause': 'توقف',
          'resume': 'تشغيل',
          'flash': 'فلاش',
          'camera': 'الكاميرة',
          'code-type': 'نوع الكود',
          'data': 'المعلومات',
          'no_camera_permission': 'لم تسمح باستخدام الكاميرة',
          'albourane': 'ألبوران',
          'licenses': 'التراخيص',
          'privacy': 'سياسة الخصوصية',
          'terms': 'بنود الاستخدام',
          'home': 'المقدمة',
          'blog': 'المدونة',
          'go_back_home': 'المرجو العودة للصفحة الرئيسية أو تصحيح الرابط',
          'error404': 'الصفحة غير موجودة',
          'print': 'طبع',
          'share': 'نشر',
          'success_share': 'تم النشر بنجاح',
          'success_print': 'تم الطبع بنجاح',
          'ticket_not_found': 'هذه التذكرة غير موجودة',
          'dh': 'درهم',
          'price': 'الثمن',
          'date': 'التاريخ',
          'arabic_name': 'الاسم العربي',
          'ticket': 'التذكرة',
          'tickets': 'التذاكر',
          'boat': 'قارب',
          'boats': 'القوارب',
          'sailor': 'بحار',
          'sailors': 'البحارة',
          'number': 'الرقم',
          'next_language': 'English',
          'more_settings': 'اعدادات اخرى',
          'ad': 'اشهار',
          'theme': 'الشكل',
          'no_achievement_generated': 'لم يتم إنشاء أي إنجاز حتى الآن',
          'no_achievement_generated_save': ' لم يتم إنشاء أي إنجاز حتى الآن',
          'save_achievement': 'تسجيل الانجاز المنشأ',
          'generate_achievement': 'انشاء انجاز',
          'preview': 'معاينة',
          'achievements': 'إنجازات',
          'coming_soon': 'قريبا',
          'login': 'الدخول',
          'logout': 'الخروج',
          'register': 'التسجيل',
          'search_sailor': 'ابحث عن بحار',
          'search_boat': 'ابحث عن قارب',
          'search_declaration': 'ابحث عن تصريح',
          'search_ticket': 'ابحث عن تذكرة',
          'search_expense': 'ابحث عن مصاريف',
          'more_results': 'نتائج أكثر',
          'less_results': 'نتائج أقل',
          'total_sailors': 'مجموع البحارة',
          'total_boats': 'مجموع القوارب',
          'total_expenses': 'مجموع المصاريف',
          'total_tickets': 'مجموع التذاكر',
          'total_declarations': 'مجموع التصريحات',
          'name': 'الاسم',
          'first_name': 'الاسم',
          'last_name': 'النسب',
          'registration': 'التسجيل',
          'id': 'التعريف',
          'cnss': 'الضمان الاجتماعي',
          'declarations': 'التصريحات',
          'phone': 'الهاتف',
          'owner': 'المالك',
          'region': 'الجهة',
          'picture': 'الصورة',
          'loading': 'جاري التحميل',
          'email': 'البريد الالكتروني',
          'password': 'الرقم السري',
          'no_internet': 'لا يوجد انترنت',
          'email_error': 'خطأ في البريد الإلكتروني',
          'password_error': 'خطأ في كلمة السر',
          'success_correction': 'تم التصحيح بنجاح',
          'success_registration': 'تم التسجيل بنجاح',
          'confirm': 'تأكيد',
          'confirm_advice': 'هل أنت متؤكد من هذه الخطوة؟',
          'success': 'نجاح',
          'error': 'فشل',
          'no': 'لا',
          'cancel': 'الغاء',
          'already_exists':
              'هذه المعلومات كانت موجودة من قبل، لا يمكن إضافتها مرتين',
          'delete': 'حذف',
          'test': 'تجربة',
          'correction': 'تصحيح المعلومات',
          'zoom': 'تكبير الصورة',
          'declaration': 'تصريح',
          'reload': 'اعادة التحميل',
          'source': 'المصدر',
          'type': 'النوع',
          'reason': 'السبب',
          'details': 'التفاصيل',
          'add_declaration': 'اضافة تصريح',
          'add_ticket': 'اضافة تذكرة',
          'add_sailor': 'اضافة بحار',
          'add_boat': 'اضافة قارب',
          'add_expense': 'اضافة مصاريف',
          'expenses': 'مصاريف',
          'expense': 'مصاريف',
          'period': 'المدة',
          'previous_ticket': 'التذكرة السابقة',
          '404': 'غير موجود',
          'code': 'الكود',
          'save': 'حفظ',
          'bank': 'البنك',
          'inventory': 'الصندوق',
          'other': 'مختلفات',
          'salary': 'الأجرة',
          'sub': 'الاقتطاعات',
          'tractor': 'الجرار',
          'office': 'المكتب',
          'special': 'استثنائي',
          'transport': 'التنقل',
          'upload': 'تحميل',
          'revenue': 'المدخول',
          'sales': 'المبيعات',
          'gas': 'المحروقات',
          'start_date': 'تاريخ البداية',
          'end_date': 'تاريخ النهاية',
          'previous_team': 'الفريق السالق',
          'new_team': 'الفريق الجديد',
          'success_login': 'تم تسجيل الدخول بنجاح',
          'fees': 'رسوم بنكية',
          'amo': 'التغطية الصحية',
          'taxehalle': 'ضريبة السوق',
          'taxeregion': 'ضريبة الجهة',
          'othercharges': 'مصاريف اخرى',
          'teamperc': 'نسبة الفريق',
          'peage': 'رسوم'
        },
      };
}

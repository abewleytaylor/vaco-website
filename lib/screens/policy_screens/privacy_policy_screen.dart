import 'package:flutter/material.dart';
import 'package:vaco_website/theme/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VacoColors.vacoBackground,
      appBar: AppBar(
        backgroundColor: VacoColors.vacoBlue,
        title: Text("Privacy policy"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
              "Privacy Policy\r\n\nVaco built the Vaco app as an Ad Supported app. This SERVICE is provided by Vaco at no cost and is intended for use as is.\r\n\nThis page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.\r\n\nIf you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. we will not use or share your information with anyone except as described in this Privacy Policy.\r\n\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Vaco unless otherwise defined in this Privacy Policy.\r\n\nInformation Collection and Use\r\n\nFor a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.\r\n\nThe app does use third party services that may collect information used to identify you.\r\n\nSome third party service providers used by the app:\r\n\n* Google Play Services\r\n\n* Google Analytics for Firebase\r\n\n* Firebase Crashlytics\r\n\nLog Data\r\n\nwe want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (\u201CIP\u201D) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.\r\n\nCookies\r\n\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\r\n\nThis Service does not use these \u201Ccookies\u201D explicitly. However, the app may use third party code and libraries that use \u201Ccookies\u201D to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\r\n\nService Providers\r\n\nwe may employ third-party companies and individuals due to the following reasons:\r\n\n* To facilitate our Service;\r\n\n* To provide the Service on our behalf;\r\n\n* To perform Service-related services; or\r\n\n* To assist us in analyzing how our Service is used.\r\n\nwe want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\r\n\nSecurity\r\n\nwe value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\r\n\nLinks to Other Sites\r\n\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. we have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\r\n\nChildren\u2019s Privacy\r\n\nThese Services do not address anyone under the age of 13. we do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.\r\n\nChanges to This Privacy Policy\r\n\nwe may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. we will notify you of any changes by posting the new Privacy Policy on this page.\r\n\nThis policy is effective as of 2020-05-12\r\n\nContact Us\r\n\nIf you have any questions or suggestions regarding our Privacy Policy, do not hesitate to contact us at Vaco.contact@protonmail.com.\r\n\n"),
        ),
      ),
    );
  }
}

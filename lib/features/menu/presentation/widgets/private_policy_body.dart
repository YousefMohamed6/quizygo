import 'package:flutter/material.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/Custom_text.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/about_us_body.dart';

class PrivatePolicyBody extends StatelessWidget {
  const PrivatePolicyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView(
        children: [
          const SizedBox(height: 16),
          CustomText(
            text: "Privacy Policy",
            fontSize: MediaQuery.sizeOf(context).width * 0.025,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 4),
          const CustomText(
            text: "QuizyGo Privacy Policy",
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 32),
          const CustomText(
            text:
                "This privacy policy has been compiled to better serve those who are concerned with how their 'Personally Identifiable\nInformation' (PII) is being used online. PII, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.",
          ),
          const SizedBox(height: 32),
          const CustomText(
              text:
                  "What personal information do we collect from the people that visit our blog, website or app?"),
          const SizedBox(height: 8),
          const CustomText(
              text:
                  "We collect information from you when you enter your name and gender while creating your link."),
          const SizedBox(height: 8),
          const CustomText(
              text:
                  "Google, as a third party vendor, uses cookies to serve ads on your site. Google’s use of the DART cookie enables it to serve ads to your users based on their visit to your sites and other sites on the Internet. Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy."),
          const SizedBox(height: 16),
          const CustomText(
            text: "How do we use your information?",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "Any of the information we collect from you may be used in one of the following ways:",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                ">  To personalize your experience : (your information helps us to better respond to your individual needs)",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                ">  To improve our website : (we continually strive to improve our website offerings based on the information and feedback we receive from you)",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                ">  To improve customer service : (your information helps us to more effectively respond to your customer service requests and support needs)",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "How do we protect your information?",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "We implement a variety of security measures to maintain the safety of your personal information when you enter, submit, or access your personal information.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "We only provide articles and information. We never ask for credit card numbers.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text: "We do not use Malware Scanning.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "Your personal information is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the information confidential.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Do we use 'cookies'?",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "Yes. Cookies are small files that a site or its service provider transfers to your computer's hard drive through your Web browser that enables the site's or service provider's systems to recognize your browser and capture and remember certain information. Cookies are also used to help us understand your preferences based on previous or current site activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "We use cookies to understand and save user's preferences for future visits.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser settings. Since browser is a little different, look at your browser's Help Menu to learn the correct way to modify your cookies.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "If users disable cookies in their browser:",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "If you turn cookies off, Some of the features that make your site experience more efficient may not function properly.Some of the features that make your site experience more efficient and may not function properly.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Third-party disclosure",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "We do not sell, trade, or otherwise transfer to outside parties your Personally Identifiable Information.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Third-party links",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "Occasionally, at our discretion, we may include or offer third-party products or services on our website. These third-party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "We have implemented the following:",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "We, along with third-party vendors such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions and other ad service functions as they relate to our website.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "Once this privacy policy is created, we will add a link to it on our home page or as a minimum, on the first significant page after entering our website. Our Privacy Policy link includes the word 'Privacy' and can easily be found on the page specified above.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "You will be notified of any Privacy Policy changes on our Privacy Policy page",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "This online privacy policy applies only to information collected through our website and not to information collected offline.",
          ),
          const SizedBox(height: 8),
          const CustomText(
            text: "Children’s privacy",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 8),
          const CustomText(
            text:
                "Our Services are not intended for use by children under 13 years of age. If we learn that we have collected personal information through the Services from a child under 13 without the consent of the child’s parent or guardian as required by law, we will delete it.  If you are a parent or guardian and you are aware that your Child has provided us with personal information, please contact us as set out in the “Contact us” section below. In certain cases, this age may be higher than 13 due to local regulatory requirements.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Retention of personal information",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "We retain your personal information only for as long as is necessary to fulfil the purposes for which it was collected and processed, in accordance with our retention policies, and in accordance with applicable laws or until you withdraw your consent (where applicable). To determine the appropriate retention period for your personal information, we consider the amount, nature, and sensitivity of the personal information, the potential risk of harm from unauthorized use or disclosure of your personal information, the purposes for which we use your personal information and whether we can achieve those purposes through other means, and the applicable legal requirements.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Security practices",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "We use reasonable organizational, technical and administrative measures designed to protect against unauthorized access, misuse, loss, disclosure, alteration and destruction of personal information. Unfortunately, data transmission over the Internet cannot be guaranteed as completely secure. Therefore, while we strive to protect your personal information, we cannot guarantee the security of personal information. ",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "Other sites, mobile applications and services ",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "Our Services may contain links to other websites, mobile applications, and other online services operated by third parties. These links are not an endorsement of, or representation that we are affiliated with, any third party. In addition, our content may be included on web pages or in mobile applications or online services that are not associated with us. We do not control third-party websites, mobile applications or online services, and we are not responsible for their actions. Other websites and services follow different rules regarding the collection, use and sharing of your personal information. We encourage you to read the privacy policies of the other websites and mobile applications and online services you use. ",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "‍Changes to this Privacy Policy",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "‍We reserve the right to modify this Privacy Policy at any time. If we make material changes to this Privacy Policy, we will notify you by updating the date of this Privacy Policy and posting it on our Services. We may also provide notification of changes in another way that we believe is reasonably likely to reach you, such as via e-mail (if you have an account where we have your contact information) or another manner through our Services.",
          ),
          const SizedBox(height: 16),
          const CustomText(
            text: "‍Can change your personal information:",
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          const CustomText(
            text:
                "‍By chatting with us or by sending us a support ticket Within 1 business day",
          ),
          const SizedBox(height: 16),
          const AboutUsInformation(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

import 'package:quizygo/core/constants/friends.dart';

class Partner {
  Partner._();
  static const Map<String, List<String>> quetionsAndAnswer = {
    "1": [
      "What kind of restaurants do you prefer?",
      "Fancy",
      "Fast Casual",
      "Food Truck",
      "Cafe",
    ],
    "2": [
      "What makes you most afraid?",
      "Clowns",
      "Dark",
      "loneliness",
      "High places",
    ],
    "3": [
      "Your favorite style",
      "Classic",
      "Casual",
      "Sporty",
      "Bohemian",
    ],
    "4": [
      "You like most",
      "Food",
      "Cars",
      "Money",
      "Traveling",
    ],
    "5": [
      "You prefer",
      "Meat",
      "Chicken",
      "Seafood",
      "Vegetables",
    ],
    "6": [
      "You like to watch",
      "Sunset",
      "Sunrise",
      "Stars",
      "Aurora",
    ],
    "7": [
      "What Do you like most",
      "Dogs",
      "Cats",
      "Hamster",
      "Turtle",
    ],
    "8": [
      "What do you do in your free time",
      "Sleep",
      "Playing",
      "Reading",
      "Meditation",
    ],
    "9": [
      "You like to practice",
      "Swimming",
      "Football",
      "Basketball",
      "Boxing",
    ],
    "10": [
      "You are more interested in news about",
      "Art",
      "Sports",
      "Politics",
      "Fashion"
    ],
    "11": [
      "Your favorite color",
      "Black",
      "Blue",
      "Pink",
      "White",
    ],
    "12": [
      "You wish to travel to ",
      "Bail",
      "Maldives",
      "Kenya",
      "Dubai",
    ],
    "13": [
      "What is the first thing you do in the morning?",
      "Work",
      "Gym",
      "Studying",
      "Stay at Home",
    ],
    "14": [
      "Your favorite type of chocolate",
      "Dark",
      "White",
      "Milk",
      "Nuts",
    ],
    "15": [
      "Your favorite season",
      "Winter",
      "Autumn",
      "Spring",
      "Summer",
    ],
  };
  static const Map<String, List<String>> images = {
    "1": [
      imagesPartnerFancy,
      imagesPartnerFastCasual,
      imagesPartnerFoodTruck,
      imagesPartnerCafe,
    ],
    "2": [
      Friends.imagesFriendsClowns,
      Friends.imagesFriendsDark,
      Friends.imagesFriendsLoneliness,
      Friends.imagesFriendsHighplaces
    ],
    "3": [
      imagesPartnerClassic,
      imagesPartnerCasual,
      imagesPartnerSport,
      imagesPartnerBohemian,
    ],
    "4": [
      imagesPartnerFood,
      imagesPartnerCars,
      imagesPartnerMoney,
      imagesPartnerTravelling,
    ],
    "5": [
      Friends.imagesFriendsMeat,
      Friends.imagesFriendsChicken,
      Friends.imagesFriendsSeafood,
      Friends.imagesFriendsVegetables
    ],
    "6": [
      imagesPartnerSunset,
      imagesPartnerSunrise,
      imagesPartnerStars,
      imagesPartnerAurora,
    ],
    "7": [
      imagesPartnerDog,
      imagesPartnerCat,
      imagesPartnerHamster,
      imagesPartnerTurtle,
    ],
    "8": [
      imagesPartnerSleeping,
      imagesPartnerPlaying,
      imagesPartnerReading,
      imagesPartnerMeditation,
    ],
    "9": [
      imagesPartnerSwimming,
      imagesPartnerFootball,
      imagesPartnerBasketball,
      imagesPartnerBoxing,
    ],
    "10": [
      imagesPartnerArt,
      imagesPartnerSport,
      imagesPartnerPolitics,
      imagesPartnerFashion,
    ],
    "11": [
      imagesPartnerBlack,
      imagesPartnerBlue,
      imagesPartnerPink,
      imagesPartnerWhite,
    ],
    "12": [
      imagesPartnerBali,
      imagesPartnerMaldives,
      imagesPartnerKenya,
      imagesPartnerDubai,
    ],
    "13": [
      imagesPartnerWork,
      imagesPartnerGym,
      imagesPartnerStudying,
      imagesPartnerStayAtHome
    ],
    "14": [
      imagesPartnerDark,
      imagesPartnerWhiteChocolate,
      imagesPartnerMilk,
      imagesPartnerNuts,
    ],
    "15": [
      imagesPartnerWinter,
      imagesPartnerAutumn,
      imagesPartnerSpring,
      imagesPartnerSummer,
    ],
  };

  /// Assets for imagesPartnerHamster
  /// assats/images/partner/Hamster.jpg
  static const String imagesPartnerHamster =
      "assats/images/partner/Hamster.jpg";

  /// Assets for imagesPartnerTurtle
  /// assats/images/partner/Turtle.jpg
  static const String imagesPartnerTurtle = "assats/images/partner/Turtle.jpg";

  /// Assets for imagesPartnerSpring
  /// assats/images/partner/Spring.jpg
  static const String imagesPartnerSpring = "assats/images/partner/Spring.jpg";

  /// Assets for imagesPartnerAutumn
  /// assats/images/partner/Autumn.jpg
  static const String imagesPartnerAutumn = "assats/images/partner/Autumn.jpg";

  /// Assets for imagesPartnerWinter
  /// assats/images/partner/Winter.jpg
  static const String imagesPartnerWinter = "assats/images/partner/Winter.jpg";

  /// Assets for imagesPartnerSummer
  /// assats/images/partner/Summer.jpg
  static const String imagesPartnerSummer = "assats/images/partner/Summer.jpg";

  /// Assets for imagesPartnerWhiteChocolate
  /// assats/images/partner/WhiteChocolate.jpg
  static const String imagesPartnerWhiteChocolate =
      "assats/images/partner/WhiteChocolate.jpg";

  /// Assets for imagesPartnerDark
  /// assats/images/partner/Dark.jpg
  static const String imagesPartnerDark = "assats/images/partner/Dark.jpg";

  /// Assets for imagesPartnerMilk
  /// assats/images/partner/Milk.jpg
  static const String imagesPartnerMilk = "assats/images/partner/Milk.jpg";

  /// Assets for imagesPartnerNuts
  /// assats/images/partner/Nuts.jpg
  static const String imagesPartnerNuts = "assats/images/partner/Nuts.jpg";

  /// Assets for imagesPartnerMaldives
  /// assats/images/partner/Maldives.jpg
  static const String imagesPartnerMaldives =
      "assats/images/partner/Maldives.jpg";

  /// Assets for imagesPartnerBali
  /// assats/images/partner/Bali.jpg
  static const String imagesPartnerBali = "assats/images/partner/Bali.jpg";

  /// Assets for imagesPartnerDubai
  /// assats/images/partner/Dubai.jpg
  static const String imagesPartnerDubai = "assats/images/partner/Dubai.jpg";

  /// Assets for imagesPartnerKenya
  /// assats/images/partner/Kenya.jpg
  static const String imagesPartnerKenya = "assats/images/partner/Kenya.jpg";

  /// Assets for imagesPartnerBlack
  /// assats/images/partner/Black.jpg
  static const String imagesPartnerBlack = "assats/images/partner/Black.jpg";

  /// Assets for imagesPartnerPink
  /// assats/images/partner/Pink.jpg
  static const String imagesPartnerPink = "assats/images/partner/Pink.jpg";

  /// Assets for imagesPartnerWhite
  /// assats/images/partner/White.jpg
  static const String imagesPartnerWhite = "assats/images/partner/White.jpg";

  /// Assets for imagesPartnerBlue
  /// assats/images/partner/Blue.jpg
  static const String imagesPartnerBlue = "assats/images/partner/Blue.jpg";

  /// Assets for imagesPartnerSleeping
  /// assats/images/partner/Sleeping.jpg
  static const String imagesPartnerSleeping =
      "assats/images/partner/Sleeping.jpg";

  /// Assets for imagesPartnerSwimming
  /// assats/images/partner/Swimming.jpg
  static const String imagesPartnerSwimming =
      "assats/images/partner/Swimming.jpg";

  /// Assets for imagesPartnerFootball
  /// assats/images/partner/Football.jpg
  static const String imagesPartnerFootball =
      "assats/images/partner/Football.jpg";

  /// Assets for imagesPartnerBoxing
  /// assats/images/partner/Boxing.jpg
  static const String imagesPartnerBoxing = "assats/images/partner/Boxing.jpg";

  /// Assets for imagesPartnerBasketball
  /// assats/images/partner/Basketball.jpg
  static const String imagesPartnerBasketball =
      "assats/images/partner/Basketball.jpg";

  /// Assets for imagesPartnerMeditation
  /// assats/images/partner/Meditation.jpg
  static const String imagesPartnerMeditation =
      "assats/images/partner/Meditation.jpg";

  /// Assets for imagesPartnerReading
  /// assats/images/partner/Reading.jpg
  static const String imagesPartnerReading =
      "assats/images/partner/Reading.jpg";

  /// Assets for imagesPartnerPlaying
  /// assats/images/partner/Playing.jpg
  static const String imagesPartnerPlaying =
      "assats/images/partner/Playing.jpg";

  /// Assets for imagesPartnerAlone
  /// assats/images/partner/Alone.jpg
  static const String imagesPartnerAlone = "assats/images/partner/Alone.jpg";

  /// Assets for imagesPartnerFood
  /// assats/images/partner/Food.jpg
  static const String imagesPartnerFood = "assats/images/partner/Food.jpg";

  /// Assets for imagesPartnerCars
  /// assats/images/partner/Cars.jpg
  static const String imagesPartnerCars = "assats/images/partner/Cars.jpg";

  /// Assets for imagesPartnerMoney
  /// assats/images/partner/Money.jpg
  static const String imagesPartnerMoney = "assats/images/partner/Money.jpg";

  /// Assets for imagesPartnerArt
  /// assats/images/partner/Art.jpg
  static const String imagesPartnerArt = "assats/images/partner/Art.jpg";

  /// Assets for imagesPartnerAurora
  /// assats/images/partner/Aurora.jpg
  static const String imagesPartnerAurora = "assats/images/partner/Aurora.jpg";

  /// Assets for imagesPartnerStars
  /// assats/images/partner/Stars.jpg
  static const String imagesPartnerStars = "assats/images/partner/Stars.jpg";

  /// Assets for imagesPartnerTravelling
  /// assats/images/partner/Travelling.jpg
  static const String imagesPartnerTravelling =
      "assats/images/partner/Travelling.jpg";

  /// Assets for imagesPartnerBaaz
  /// assats/images/partner/Baaz.jpg
  static const String imagesPartnerBaaz = "assats/images/partner/Baaz.jpg";

  /// Assets for imagesPartnerBohemian
  /// assats/images/partner/Bohemian.jpg
  static const String imagesPartnerBohemian =
      "assats/images/partner/Bohemian.jpg";

  /// Assets for imagesPartnerWithYourLover
  /// assats/images/partner/with your lover.jpeg
  static const String imagesPartnerWithYourLover =
      "assats/images/partner/with your lover.jpeg";

  /// Assets for imagesPartnerBaghbhans
  /// assats/images/partner/Baghbhans.jpeg
  static const String imagesPartnerBaghbhans =
      "assats/images/partner/Baghbhans.jpeg";

  /// Assets for imagesPartnerBaghbhans
  /// assats/images/partner/Baghbhans.jpeg
  static const String imagesPartnerBirds = "assats/images/partner/birds.jpeg";

  /// Assets for imagesPartnerCafe
  /// assats/images/partner/Cafe.jpg
  static const String imagesPartnerCafe = "assats/images/partner/Cafe.jpg";

  /// Assets for imagesPartnerCasual
  /// assats/images/partner/Casual.jpg
  static const String imagesPartnerCasual = "assats/images/partner/Casual.jpg";

  /// Assets for imagesPartnerCat
  /// assats/images/partner/Cat.jpg
  static const String imagesPartnerCat = "assats/images/partner/Cat.jpg";

  /// Assets for imagesPartnerClassic
  /// assats/images/partner/Classic.jpg
  static const String imagesPartnerClassic =
      "assats/images/partner/Classic.jpg";

  /// Assets for imagesPartnerDog
  /// assats/images/partner/Dog.jpg
  static const String imagesPartnerDog = "assats/images/partner/Dog.jpg";

  /// Assets for imagesPartnerFacebook
  /// assats/images/partner/Facebook.jpg
  static const String imagesPartnerFacebook =
      "assats/images/partner/Facebook.jpg";

  /// Assets for imagesPartnerFancy
  /// assats/images/partner/Fancy.jpg
  static const String imagesPartnerFancy = "assats/images/partner/Fancy.jpg";

  /// Assets for imagesPartnerFashion
  /// assats/images/partner/Fashion.jpg
  static const String imagesPartnerFashion =
      "assats/images/partner/Fashion.jpg";

  /// Assets for imagesPartnerFast casual
  /// assats/images/partner/Fast casual.jpg
  static const String imagesPartnerFastCasual =
      "assats/images/partner/Fast casual.jpg";

  /// Assets for imagesPartnerFast food
  /// assats/images/partner/Fast food.jpg
  static const String imagesPartnerFastFood =
      "assats/images/partner/Fast food.jpg";

  /// Assets for imagesPartnerFood truck
  /// assats/images/partner/Food truck.jpg
  static const String imagesPartnerFoodTruck =
      "assats/images/partner/Food truck.jpg";

  /// Assets for imagesPartnerGo out
  /// assats/images/partner/Go out.jpg
  static const String imagesPartnerGoOut = "assats/images/partner/Go out.jpg";

  /// Assets for imagesPartnerGym
  /// assats/images/partner/Gym.jpg
  static const String imagesPartnerGym = "assats/images/partner/Gym.jpg";

  /// Assets for imagesPartnerHome cooked food
  /// assats/images/partner/Home cooked food.jpg
  static const String imagesPartnerHomeCookedFood =
      "assats/images/partner/Home cooked food.jpg";

  /// Assets for imagesPartnerInstagram
  /// assats/images/partner/Instagram.jpg
  static const String imagesPartnerInstagram =
      "assats/images/partner/Instagram.jpg";

  /// Assets for imagesPartnerStudying
  /// assats/images/partner/Studying.jpg
  static const String imagesPartnerStudying =
      "assats/images/partner/Studying.jpg";

  /// Assets for imagesPartnerLong hair
  /// assats/images/partner/Long hair.jpg
  static const String imagesPartnerLongHair =
      "assats/images/partner/Long hair.jpg";

  /// Assets for imagesPartnerMeWe
  /// assats/images/partner/MeWe.jpg
  static const String imagesPartnerMeWe = "assats/images/partner/MeWe.jpg";

  /// Assets for imagesPartnerPinterest
  /// assats/images/partner/Pinterest.jpg
  static const String imagesPartnerPinterest =
      "assats/images/partner/Pinterest.jpg";

  /// Assets for imagesPartnerPolitics
  /// assats/images/partner/Politics.jpg
  static const String imagesPartnerPolitics =
      "assats/images/partner/Politics.jpg";

  /// Assets for imagesPartnerShort hair
  /// assats/images/partner/Short hair.jpg
  static const String imagesPartnerShortHair =
      "assats/images/partner/Short hair.jpg";

  /// Assets for imagesPartnerSnapChat
  /// assats/images/partner/SnapChat.jpg
  static const String imagesPartnerSnapChat =
      "assats/images/partner/SnapChat.jpg";

  /// Assets for imagesPartnerSport
  /// assats/images/partner/Sport.jpg
  static const String imagesPartnerSport = "assats/images/partner/Sport.jpg";

  /// Assets for imagesPartnerSporty
  /// assats/images/partner/Sporty.jpg
  static const String imagesPartnerSporty = "assats/images/partner/Sporty.jpg";

  /// Assets for imagesPartnerStay at home
  /// assats/images/partner/Stay at home.jpg
  static const String imagesPartnerStayAtHome =
      "assats/images/partner/Stay at home.jpg";

  /// Assets for imagesPartnerSunrise
  /// assats/images/partner/Sunrise.jpg
  static const String imagesPartnerSunrise =
      "assats/images/partner/Sunrise.jpg";

  /// Assets for imagesPartnerSunset
  /// assats/images/partner/Sunset.jpg
  static const String imagesPartnerSunset = "assats/images/partner/Sunset.jpg";

  /// Assets for imagesPartnerTicTok
  /// assats/images/partner/TicTok.jpg
  static const String imagesPartnerTicTok = "assats/images/partner/TicTok.jpg";

  /// Assets for imagesPartnerVK
  /// assats/images/partner/VK.jpg
  static const String imagesPartnerVK = "assats/images/partner/VK.jpg";

  /// Assets for imagesPartnerWith friends
  /// assats/images/partner/With friends.jpg
  static const String imagesPartnerWithFriends =
      "assats/images/partner/With friends.jpg";

  /// Assets for imagesPartnerWork
  /// assats/images/partner/Work.jpg
  static const String imagesPartnerWork = "assats/images/partner/Work.jpg";

  /// Assets for imagesPartnerX
  /// assats/images/partner/X.jpg
  static const String imagesPartnerX = "assats/images/partner/X.jpg";
}

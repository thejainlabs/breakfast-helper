//
//  ViewController.swift
//  breakfast helper
//
//  Created by Neelesh Jain on 07/03/20.
//  Copyright © 2020 Neelesh Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var breakFastImage: UIImageView!
    @IBOutlet weak var breakFastHeadingLabel: UILabel!
    @IBOutlet weak var breakFastDescriptionLabel: UILabel!
    
    let breakFastList = [
        "Poha",
        "Masala Poori",
        "Aloo Parantha",
        "Sabudana Vada",
        "Luchi with Dum Aloo",
        "Methi Parantha",
        "Kathi Roll",
        "Onion Uttapam",
        "Soya Roll",
        "Bihari Ghugni",
        "Rava Dhokla",
        "Kaala Chana Chaat",
        "Sattu Parantha",
        "Besan Masala Roti",
        "Sarva Pindi",
        "Chapaati Noodles",
        "Chai with Muri",
        "Paneer Cutlet",
        "Stuffed Appe",
        "Pav Sandwich",
        "Khaman Dhokla",
        "Idli",
    ]
    
    let breakFastDescription = [
        "Poha is a traditional breakfast recipe of western India, but it is liked all over in India. It’s a very easy and quick recipe. Even bachelors can make poha. Poha is not only easy to prepare but it is also light on the stomach. This simple dish is complimented with some fried potatoes and peanuts.",
        "A very flavorful poori with the hint of various spices such as carom seeds, fenugreek leaves, fennel seeds and many more is Masala Poori. It makes a great breakfast option as it can be served with any achaar or simple tea. It can also be taken while traveling as it has a good shelf life.",
        "Aloo Paratha Recipe is a wheat flatbread stuffed with tempting potato mixture. Basically, Aloo Paratha is famous in Punjab (North India), but this dish is relished by everyone. It is a good option for tiffin or lunch box and can be served with yogurt (curd), mango pickle or any chutney.",
        "Sabudana vada is a crunchy patty made using sago pearls i.e. sabudana. This is one of the Indian breakfast recipes which can be consumed during fasts. Serve it hot with peanut or coconut chutney or mint chutney. You might also like sabudana thalipeeth.",
        "Very popular deep-fried puffed bread from the Bengali cuisine prepared with all-purpose flour is luchi. Just as bhatura is to chole in the Punjabi cuisine, so is Luchi to Bengali Dum Aloo in Bengali cuisine. Luchi also pairs well with cholar dal etc.",
        "One of the most popular bread from Indian cuisine is the paratha. Paratha bursting with the flavor of fresh fenugreek leaves not only makes a healthy but also a delish breakfast option. Methi paratha can be served with chilled yogurt or pickle or chutney of your choice, followed by a cup of hot tea.",
        "Kebab prepared on wooden skewers, i.e. kathi, rolled in paratha along with assorted veggies make a delectable roll called kathi roll. These veg rolls come from Kolkata. The word kathi means wooden skewers. Kathi rolls recipe has seen many variations. This recipe of veg kathi roll uses kebabs made with paneer, along with bell peppers and onions.",
        "Onion uttapam calls for very minimal ingredients. Just a batter and onion slices are what we need for this.left over batter to make onion uttapam. It is a very interesting recipe with only some brown onions as the topping. ",
        "Healthy and delectable chapati rolls made with the filling of soya granules or soya chunks keema is Soya Kheema Roll. It has the perfectly tangy yet crunchy pickled vegetables, and flavorsome soya granules stuffing.",
        "Ghugni is a very popular snack of Eastern India, prepared in a number of ways, with different ingredients. This is the recipe of dry kala chana ghugni from the state of Bihar. Ghugni is equally popular in other states such as Orissa, Jharkhand, Assam, Bengal, and Uttar Pradesh.",
        "Oats Dhokla is an instant dhokla prepared using oats, i.e. quick-cooking oats, semolina, and yogurt. It is absolutely soft and spongy. It is porous and feels light on the tummy and is easily digestible. Oats dhokla makes for a good oats recipe and a healthy breakfast recipe.",
        "A tangy and spicy chaat recipe using kala chana or black chickpeas, with the juiciness of chopped tomatoes, the kick of chaat masala, bite of potatoes is kala chana chaat. Chaat recipes are so delightful.",
        "Stuffed paratha prepared with chana sattu flavored with pickle masala, onions, fresh coriander leaves, green chili, and carom seeds, etc. is sattu paratha. Sattu is a very popular Bihar food. And due to the sattu benefits, it is becoming popular.",
        "Healthy and flavorful flatbread made with gram flour and whole wheat flour, from the state of Haryana, is besan masala roti. It is flavored with the most basic spices and fresh ingredients. It is a popular breakfast recipe in Haryana.",
        "Rice flour pancake from the state of Telangana/Andhra Pradesh, which bursts with the flavors of ginger, garlic, green chilies, curry leaves, and coriander leaves, has the bite of chana dal, sesame seeds, roasted peanuts, etc. is Sarva Pindi.",
        "Thin strips of chapatis cooked with crunchy vegetables with the hint of soya sauce, the zing of vinegar, the heat of chili sauce, and pungency of garlic and ginger, makes a dish totally appetizing and so healthy.",
        "This is a combination of tea and light but spicy snack from the state of West Bengal. Cha means tea and muri means a snack prepared using puffed rice i.e. murmura. Milky and creamy tea, flavored with cinnamon and cloves and ginger is the doodh cha. Puffed rice roasted till crunchy and flavored with chopped onions, green chilies and a spicy mixture namkeen is masala/mashla muri.",
        "Snack recipe using paneer which is mildly spiced and absolutely healthy is paneer cutlet. It has soft and melt-in-mouth inside and crisp and crunchy outside. Paneer cutlets can be prepared quickly and without many ingredients.",
        "Appe is a popular south Indian breakfast recipes. It is a kids’ favorite recipe because it is a one bite snack which is loved by every kid. A delicious stuffing is used to make it more appealing and of course, filling.",
        "Pav Sandwich is a famous Mumbai street fast food. Pav sandwich is very easy to make and is the best way to use leftover pav. Kids like to take Pav Sandwich in their tiffin box and for mom, it’s very simple and quick breakfast recipe. In Pav Sandwich sliced Pav is stuffed with chutney and veggies. We can make Pav Sandwich healthy by adding paneer etc. ",
        "Khaman Dhokla is a famous Gujarati recipe. It is a gluten free recipe. Khaman Dhokla is prepared with gram flour, baking soda, and a flavourful tempering. It has a perfect balance of many flavors; it is savory with the tanginess of lemon. It’s very spongy and soft and has the freshness of coriander and green chilies.",
        "It is one of the most popular South Indian breakfast recipes but is also liked by people of many states of India. Instant sooji Idli Recipe is made with Sooji (Rava) and yogurt. It’s a very healthy breakfast because idlis are steamed to cook and don’t call for oil or any other kind of fat. It can be further used in many ways such as fried idli, idli pakoda etc.",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // hiding the fields to wait for user input
        breakFastImage.isHidden = true
        breakFastDescriptionLabel.isHidden = true
        breakFastHeadingLabel.isHidden = true
        
    }
    
    
    @IBAction func suggestMeButtonPressed(_ sender: Any) {
        
        //showing all the labels and images
        unhideImageAndLabels()
        
        //getting a random dish
        getRandomBreakfastData()
    
    }
    
    func getRandomBreakfastData() {
        
        //creating a random number to access a random menu
        let randomNumber = Int.random(in: 0..<breakFastList.count)
        
        // generating a random dish
        breakFastImage.image = UIImage(named: breakFastList[randomNumber])
        breakFastDescriptionLabel.text = breakFastDescription[randomNumber]
        breakFastHeadingLabel.text = breakFastList[randomNumber]
    }

    func unhideImageAndLabels() {
        breakFastImage.isHidden = false
        breakFastDescriptionLabel.isHidden = false
        breakFastHeadingLabel.isHidden = false
    }

}


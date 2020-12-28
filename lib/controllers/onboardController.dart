import 'package:flutter/material.dart';
import 'package:onboardScrenn/models/onboard_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardController extends GetxController {
  var selectedIndex = 0.obs;

  var pageController = PageController();

  nextPage() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardInfo> onboardPage = [
    OnboardInfo("assets/on1.png", "Food Order",
        "Bienvenue dans notre restaurantvous trouverai ici les meilleurs plats de la capital"),
    OnboardInfo("assets/on2.png", "Fast Delivery",
        "Avec un service de livraison rapide faites vos commandes et nos livreurs arrivent"),
    OnboardInfo("assets/on3.png", "Good Service",
        "Payer à la livraisons ou pendantla commande par carte, par chèque ou en espèces"),
  ];
}

# Sessie 3
App vanuit het niets

## Doel
Een aantal basis constructies vanuit het Cocoa Touch framework begrijpen.

## Demo 
- Maak een nieuw project aan. 
- Verwijder het storyboard. 
- Verwijder referentie naar het storyboard uit de propertlist


## Opzet

Opzet:

# Demo 1


        window = UIWindow (frame: UIScreen.mainScreen().bounds)
        
        let redController = UIViewController()
        let greenController = UIViewController()
        
        let tabController = UITabBarController()
        
        tabController.viewControllers = [redController, greenController]
        window!.rootViewController = tabController
        window!.makeKeyAndVisible()
        
        redController.view.backgroundColor = UIColor.redColor()
        redController.title = "red"
        greenController.view.backgroundColor = UIColor.greenColor()
        greenController.title = "green"

# Demo 2

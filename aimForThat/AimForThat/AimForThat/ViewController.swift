//
//  ViewController.swift
//  AimForThat
//
//  Created by Ángel Reyes on 09/04/18.
//  Copyright © 2018 AngelReyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var currentValue:Int = 0;
    var targetValue:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.currentValue = lroundf(slider.value)
        
        //Todos los números son probables número entre 1 y 100
        self.targetValue = 1 + Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func showAlert(_ sender: UIButton) {
        print("He pulsado el botón")
        
        let message = """
            El valor del slider  es \(self.currentValue)
            El valor del objetivo es \(self.targetValue)
        """
        
        let alert = UIAlertController(title:"Hola mundo",message:message,preferredStyle:.alert)
        
        let action = UIAlertAction(title:"Genial",style:.default,handler:nil)
        
        alert.addAction(action)
        
        present(alert,animated: true)
        
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        print("El valor del slider  es \(sender.value)")
        self.currentValue = lroundf(sender.value)
        
    }
}


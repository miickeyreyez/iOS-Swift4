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
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    var currentValue:Int = 0;
    var targetValue:Int = 0;
    var score:Int = 0;
    var round:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  
    @IBAction func showAlert(_ sender: UIButton) {
        
        var difference : Int = 0
        
        /*if self.currentValue > self.targetValue {
            difference = self.currentValue - self.targetValue
        } else {
            difference = self.targetValue - self.currentValue
        }*/
        difference = abs(self.currentValue - self.targetValue)
        
        let points = (difference > 0) ? 100 - difference : 1000
        
        self.score += points
        self.scoreLabel.text = "\(self.score)"
        
        let message = """
            El valor del slider  es \(self.currentValue)
            El valor del objetivo es \(self.targetValue)
            La diferencia es \(difference)
            Has marcado \(points) puntos
        """
        let title:String
        
        switch difference{
        case 0:
            title = "Puntuación perfecta"
        case 1...5:
            title = "Puntuación casi perfecta"
        default:
            title = "Intenta nuevamente"
        }
        
        let alert = UIAlertController(title:"Hola mundo",message:message,preferredStyle:.alert)
        let action = UIAlertAction(title:"Genial",style:.default,handler:nil)
        
        alert.addAction(action)
        
        present(alert,animated: true)
        
        startNewRound()
        updateLabels()
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        self.currentValue = lroundf(sender.value)
    }
    
    func startNewRound(){
        //Todos los números son probables número entre 1 y 100
        self.targetValue = 1 + Int(arc4random_uniform(100))
        self.currentValue = lroundf(slider.value)
        self.slider.value = Float(self.currentValue)
        self.round += 1
    }
    
    func updateLabels(){
        self.targetLabel.text = "\(self.targetValue)"
        self.scoreLabel.text = "\(self.score)"
        self.roundLabel.text = "\(self.round)"
    }
}


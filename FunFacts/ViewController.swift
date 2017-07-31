//
//  ViewController.swift
//  FunFacts
//
//  Created by Raul Bigoria Escobedo on 29/07/17.
//  Copyright © 2017 Raul Bigoria Escobedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.facts[0]
        let color = colorProvider.colors[0]
        funFactButton.tintColor = color
        view.backgroundColor = color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showFact() {        
        funFactLabel.text=factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }

}


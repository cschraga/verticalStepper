//
//  ViewController.swift
//  VerticalStepper
//
//  Created by Christian Schraga on 5/3/17.
//  Copyright © 2017 Straight Edge Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalStepper: VerticalStepper!
    @IBOutlet weak var resultLabel: UILabel!
    
    var underlyingValue = 0
    
    //Selectors
    func increment(){
        underlyingValue += 1
        resultLabel.text = "\(underlyingValue)"
    }
    
    func decriment(){
        underlyingValue -= 1
        resultLabel.text = "\(underlyingValue)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verticalStepper.addTarget(self, action: #selector(ViewController.increment), for: .increased)
        verticalStepper.addTarget(self, action: #selector(ViewController.decriment), for: .decreased)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


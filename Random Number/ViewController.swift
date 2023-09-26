//
//  ViewController.swift
//  Random Number
//
//  Created by Adriel Teles on 21/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var randomNumber: UILabel!
    
    @IBAction func generateRandomNumber(_ sender: Any) {
        
        randomNumber.text = String(Int.random(in: 0...1000))
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//
//  MainViewController.swift
//  Random Number
//
//  Created by Adriel Teles on 13/10/23.
//

import UIKit

class MainViewController: UIViewController{
    
    var mainVC : MainView?
    var randomNumber = RandomNumber()
    
    
    override func loadView() {
        mainVC = MainView()
        view = mainVC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainVC?.delegate(delegate: self)
        mainVC?.numberLabel.text = String(randomNumber.getRandomNumber())
    }
}

extension MainViewController: MainViewDelegate {
    func randomButtonPressed() {
        mainVC?.numberLabel.text = String(randomNumber.getRandomNumber())
    }
}

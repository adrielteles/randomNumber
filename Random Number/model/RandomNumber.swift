//
//  RandomNumber.swift
//  Random Number
//
//  Created by Adriel Teles on 13/10/23.
//

import Foundation

struct RandomNumber {
    
    func getRandomNumber() -> Int{
        return Int.random(in: 0...1000)
    }
}

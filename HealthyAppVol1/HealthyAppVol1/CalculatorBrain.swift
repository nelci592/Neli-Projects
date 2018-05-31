//
//  CalculatorBrain.swift
//  HealthyAppVol1
//
//  Created by klant on 4/12/18.
//  Copyright © 2018 klant. All rights reserved.
//
import Foundation

struct CalculatorBrain {
    let weightInKG: Double
    let heightInCM: Double
    
    init(weightInKG: String, heightInCM: String) {
        self.weightInKG = Double(weightInKG) ?? 0.0
        self.heightInCM = Double(heightInCM) ?? 0.0
    }
    
    func calcBmi() -> Double {
        return weightInKG / ((heightInCM / 100) * (heightInCM / 100))
    }
}

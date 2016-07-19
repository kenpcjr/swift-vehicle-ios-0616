//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Kenneth Cooke on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]){
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
        
    }
    
    override func accelerate() {
        
        let speedToAdd = self.speed + self.maxSpeed / 5
        
        if speedToAdd <= self.maxSpeed{
            
            self.speed = speedToAdd
            
        }
    }
    
    override func decelerate() {
        
        let speedToDecrease = self.speed - self.maxSpeed / 5
        
        if speedToDecrease >= 0 {
            
            self.speed = speedToDecrease
            
        }
    }
    
    func driftRight(){
        
        if self.speed > 0 {
            
            if self.heading == 360 {
                
                self.heading = 0
                
            }
            
            self.heading += 90
            
            self.speed -= (self.speed / 4)
            
        }
    }
    
    func driftLeft(){
        
        if self.speed > 0 {
            
            if self.heading == 0 {
                
                self.heading = 360
            }
            
            self.heading -= 90
            
            self.speed -= (self.speed / 4)
            
        }
        
    }
    
}
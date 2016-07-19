//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Kenneth Cooke on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Vehicle {
    
    let name: String
    
    let weight: Double
    
    let maxSpeed: Double
    
    var speed: Double = 0
    
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double){
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        
    }
    
    func goFast(){
        
        self.speed = self.maxSpeed
        
    }
    
    func halt(){
        
        self.speed = 0
        
    }
    
    func accelerate(){
        
        let speedToAdd = self.speed + self.maxSpeed / 10
        
        if speedToAdd <= self.maxSpeed{
            
            self.speed = speedToAdd
            
        }
        
    }
    
    func decelerate(){
        
        let speedToDecrease = self.speed - self.maxSpeed / 10
        
        if speedToDecrease >= 0 {
            
            self.speed = speedToDecrease
            
        }
        
    }
    
    func turnRight() {
        
        if self.speed > 0 {
            
            if self.heading == 360 {
                
                self.heading = 0
                
            }
            
            self.heading += 90
            
            self.speed = self.speed / 2
            
        }
        
    }
    
    func turnLeft(){
        
        if self.speed > 0 {
            
            if self.heading == 0 {
                
                self.heading = 360
            }
            
            self.heading -= 90
            
            self.speed = self.speed / 2
            
        }
        
    }
    
    
    
    
    
}
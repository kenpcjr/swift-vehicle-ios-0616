//
//  plane.swift
//  swift-vehicle-lab
//
//  Created by Kenneth Cooke on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        
        if altitude > 0 && self.speed > 0 {
            
            return true
            
        }else{
            
            return false
            
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    func takeoff(){
        
        if self.inFlight == false {
            
            self.speed = self.maxSpeed / 10
            self.altitude = self.maxAltitude / 10
            
        }
    }
    
    func land(){
        
        self.speed = 0
        self.altitude = 0
        
    }
    
    func climb(){
        
        if self.inFlight {
            
            let altitudeToClimb = self.altitude + (self.maxAltitude / 10)
            
            if altitudeToClimb < maxAltitude {
                
                self.altitude = altitudeToClimb
                
                decelerate()
                
            }
            
        }
    }
    
    
    func dive(){
        
        
        let altitudeToDive = self.altitude - (self.maxAltitude / 10)
        
        if altitudeToDive > 0 {
            
            self.altitude = altitudeToDive
            
            accelerate()
            
        }
    }
    
    func bankRight(){
        
        if inFlight {
            
            if self.heading == 360 {
                
                self.heading = 0
                
            }
            
            self.heading += 45
            
            self.speed -= (self.speed / 10)
            
        }
    }
    
    func bankLeft(){
        
        if inFlight {
            
            if self.heading == 0 {
                
                self.heading = 360
            }
            
            self.heading -= 45
            
            self.speed -= (self.speed / 10)
            
        }
        
    }
    
}


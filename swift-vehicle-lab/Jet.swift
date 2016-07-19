//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Kenneth Cooke on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        
        if inFlight {
       
        let altitudeToClimb = self.altitude + (self.maxAltitude / 5)
        
        if altitudeToClimb < maxAltitude {
            
            self.altitude = altitudeToClimb
            
            decelerate()
            
        }
            
        }
    }
    
    override func dive() {
        
        let altitudeToDive = self.altitude - (self.maxAltitude / 5)
        
        if altitudeToDive > 0 && inFlight {
            
            self.altitude = altitudeToDive
            
            accelerate()
            
        }
    }
    
    func afterburner() {
        
        if self.inFlight && self.speed == self.maxSpeed {
            
            self.speed = self.maxSpeed * 2
            
            
        }
        
    }
}
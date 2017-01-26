//
//  Player.swift
//  DiamondKineticsCodeTest
//
//  Created by Heather Wolford on 1/26/17.
//  Copyright © 2017 Heather Wolford. All rights reserved.
//

import Foundation

class Player: NSObject{
    
    //Properties
    var name: String
    var league: String
    var startTime: Float
    var endTime: Float
    var batSpeed: Float
    
    //Initializers
    override init(){
        name = ""
        league = ""
        startTime = 0.000
        endTime = 0.000
        batSpeed = 0.00
    }
    
    init(name: String, league: String, startTime: Float, endTime: Float, batSpeed: Float){
        self.name = name
        self.league = league
        self.startTime = startTime
        self.endTime = endTime
        self.batSpeed = batSpeed
    }
}

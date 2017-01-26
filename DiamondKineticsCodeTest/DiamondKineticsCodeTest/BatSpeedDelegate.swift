//
//  BatSpeedDelegate.swift
//  DiamondKineticsCodeTest
//
//  Created by Heather Wolford on 1/26/17.
//  Copyright © 2017 Heather Wolford. All rights reserved.
//

import Foundation

//Step 1 of Custom Delegate - Know the rules

protocol BatSpeedDelegate {
    //Pass along the chosen bat swing speed
    func passTheData(_ data: Float)
}

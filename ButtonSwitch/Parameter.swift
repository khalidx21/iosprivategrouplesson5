//
//  Parameter.swift
//  ButtonSwitch
//
//  Created by mac on 04/08/2016.
//  Copyright © 2016 mac. All rights reserved.
//

import Foundation

import UIKit

class Parameter {
    
    var image: UIImage?
    var name: String
    var switchIsSet: Bool
    
    init (name: String, switchIsSet: Bool, image: UIImage ) {
        
        self.name = name
        self.switchIsSet = switchIsSet
        self.image = image
    }
}
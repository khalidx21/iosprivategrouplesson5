//
//  ParametersController.swift
//  ButtonSwitch
//
//  Created by mac on 04/08/2016.
//  Copyright © 2016 mac. All rights reserved.
//

import Foundation
import UIKit

class ParametersController {
    
    static let sharedInstance = ParametersController()
    var  parameters : [Parameter]
    
    init() {
        let parties = Parameter(name: "parties", switchIsSet: false, image: UIImage(named: "parties")!)
        let books = Parameter(name: "books", switchIsSet: true, image: UIImage(named: "books")!)
        let computers = Parameter(name: "bomputers", switchIsSet: true, image: UIImage(named: "computers")!)
        let phones = Parameter(name: "phones", switchIsSet: true, image: UIImage(named: "phones")!)
        
        self.parameters = [parties, books, computers, phones]
    }
    
    func updateParameter(parameter: Parameter, selected: Bool) {
        parameter.switchIsSet = selected
    }
}
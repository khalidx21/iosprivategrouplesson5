//
//  ParameterTableViewCell.swift
//  ButtonSwitch
//
//  Created by mac on 04/08/2016.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class ParameterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var parameterLable: UILabel!
    
    @IBOutlet weak var switchTapped: UISwitch!
    
    
    
    
    
    var parameter: Parameter?
    
    weak var Delegate: ParameterTableViewCellDelegate?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateWithParameter(parameter: Parameter){
        
        self.parameter = parameter
        
        firstImage.image = parameter.image
        parameterLable.text = parameter.name
        switchTapped.on = parameter.switchIsSet
    
        
        if parameter.switchIsSet {
            self.backgroundColor = UIColor.cyanColor()
            
        }
        else {
            self.backgroundColor = UIColor.brownColor()
            
        }
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    @IBAction func switchButtonTapped(sender: AnyObject) {
        
        Delegate?.parameterChanged(self , selected: selected)
        
    }
 
    
    
}

protocol ParameterTableViewCellDelegate: class {
    func parameterChanged(cell: ParameterTableViewCell, selected: Bool)
    
}

    
    




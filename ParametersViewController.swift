//
//  ParametersViewController.swift
//  ButtonSwitch
//
//  Created by mac on 04/08/2016.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class ParametersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ParameterTableViewCellDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ParametersController.sharedInstance.parameters.count
        
    }
    
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier") as? ParameterTableViewCell
        
        let parameter = ParametersController.sharedInstance.parameters[indexPath.row]
        
        cell?.updateWithParameter(parameter)
        
        cell?.Delegate = self
        
        return cell ?? UITableViewCell()
    }
    
    
    
    
    
    func parameterChanged(cell: ParameterTableViewCell, selected: Bool) {
        guard let parameter = cell.parameter,
            cellIndexPath = tableView.indexPathForCell(cell) else {return }
        
        tableView.beginUpdates()
        ParametersController.sharedInstance.updateParameter(parameter , selected: selected)
        tableView.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic)
        tableView.endUpdates()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}

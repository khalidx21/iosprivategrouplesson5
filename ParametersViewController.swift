//
//  ParametersViewController.swift
//  ButtonSwitch
//
//  Created by mac on 04/08/2016.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class ParametersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,ParameterTableViewCellDelegate {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var tableViewId = "TableCellId"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ParametersController.sharedInstance.parameters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let parameter = ParametersController.sharedInstance.parameters[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier(tableViewId, forIndexPath: indexPath) as? ParameterTableViewCell
        
        cell?.updateWithParameter(parameter)
        cell?.Delegate = self
        
        return cell!
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func parameterChanged(cell: ParameterTableViewCell, selected: Bool) {
        
        guard let parameter = cell.parameter
            ,cellIndexPath = tableViewOutlet.indexPathForCell(cell) else { return }
        
        tableViewOutlet.beginUpdates()
        ParametersController.sharedInstance.updateParameter(parameter , selected: cell.switchTapped.on)
        tableViewOutlet.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic)
        tableViewOutlet.endUpdates()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

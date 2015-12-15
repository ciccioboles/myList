//
//  ViewController.swift
//  myList
//
//  Created by dev on 11/12/15.
//  Copyright © 2015 ciccio boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items = [String]()
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addButton(sender: UIButton) {
        
        let newItem = textField.text
        items.append(newItem!)
        textField.resignFirstResponder()
        textField.text = "" //clears text field
        tableView.reloadData()
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = UIColor.grayColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let selectedRow:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        if selectedRow.accessoryType == UITableViewCellAccessoryType.None{
            selectedRow.accessoryType = UITableViewCellAccessoryType.Checkmark
            selectedRow.tintColor = UIColor.blackColor()
        }
            
        else{
            selectedRow.accessoryType = UITableViewCellAccessoryType.None
            
        }
        //
        
    }
    
    //swipe to delete
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        let deletedRow:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        if editingStyle == UITableViewCellEditingStyle.Delete {
        items.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            deletedRow.accessoryType = UITableViewCellAccessoryType.None
        }
    }
    
    
  //work????
    //1
    //3
    //4
    //5
    //6
    //7
    //it worked?
    //worked...2??????
    //terminaltest
    
} // END




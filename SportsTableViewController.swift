//
//  SportsTableViewController.swift
//  StatSheet
//
//  Created by Sampath Duddu on 12/31/14.
//  Copyright (c) 2014 NexGenTec. All rights reserved.
//

import UIKit

class SportsTableViewController: UITableViewController, UITableViewDelegate {
    
    var sports = ["NBA", "NFL", "MLB", "NHL"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return sports.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = sports[indexPath.row]
        cell.accessoryType = .DisclosureIndicator
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //CODE TO BE RUN ON CELL TOUCH
        
        
        if indexPath.row == 0
        {
            performSegueWithIdentifier("NBAsegue", sender: nil)
        }
            
        else if indexPath.row == 1
        {
            performSegueWithIdentifier("NFLsegue", sender: nil)
            
        }
        
        else if indexPath.row == 2
        {
            performSegueWithIdentifier("MLBsegue", sender: nil)
            
        }
        
        else if indexPath.row == 3
        {
            performSegueWithIdentifier("NHLsegue", sender: nil)
            
        }
        
   
        
    }




}

//
//  RootTableViewController.swift
//  ScoreTracker
//
//  Created by Student on 10/15/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    
    var teams: [Team] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teams = Team.seedTeams()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teams.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("teamNameCell", forIndexPath: indexPath)
        cell.textLabel?.text = teams[indexPath.row].name
        return cell
    }
    
    
    
     // MARK: - Navigation
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)
//        let destinationTeamTV = segue.destinationViewController as! RootTableViewController
//        destinationTeamTV .selectedPresonalGroucerieslistIndex = indexPath!.row
//        print(indexPath?.row)
//    }






}

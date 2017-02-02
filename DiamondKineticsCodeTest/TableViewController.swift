//  TableViewController.swift
//  DiamondKineticsCodeTest
//
//  Created by Heather Wolford on 1/26/17.
//  Copyright © 2017 Heather Wolford. All rights reserved.
//

import UIKit

//Step 2 of Custom Delegate - I can do it
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Variables
    var players: Array<Player> = []
    fileprivate let cellIdentifier = "resultsCell"
    var batSpeedParameter: Float = 0.000
    var revisedPlayerList: Array<Player> = []
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //INSTRUCTIONS
    //Set up some sample data types that have a start time, end time, and some other piece of data.
    //Data Model
    let Player1 = Player(name: "Andrew McCutchen", league: "MLB", startTime: 0.0123, endTime: 0.0391, batSpeed: (0.0391 - 0.0123))
    let Player2 = Player(name: "Roberto Clemente", league: "MLB", startTime: 0.0124, endTime: 0.0402, batSpeed: (0.0402 -  0.0124))
    let Player3 = Player(name: "Willie Stargell", league: "MLB", startTime: 0.0125, endTime: 0.0417, batSpeed: (0.0417 -  0.0125))
    let Player4 = Player(name: "Starling Marte", league: "MLB", startTime: 0.0126, endTime: 0.0365, batSpeed: (0.0365 - 0.0126))
    let Player5 = Player(name: "Jung-ho Kang", league: "MLB", startTime: 0.0136, endTime: 0.0366, batSpeed: (0.0366 - 0.0136))
    let Player6 = Player(name: "Hayley Flynn", league: "NPF", startTime: 0.0111, endTime: 0.0401, batSpeed: (0.0401 - 0.0111))
    let Player7 = Player(name: "Whitney Arion", league: "NPF", startTime: 0.0134, endTime: 0.0444, batSpeed: (0.0444 - 0.0134))
    let Player8 = Player(name: "Emma Johnson", league: "NPF", startTime: 0.0101, endTime: 0.0401, batSpeed: (0.0401 - 0.0101))
    let Player9 = Player(name: "Stacy Porter", league: "NPF", startTime: 0.0119, endTime: 0.0400, batSpeed: (0.0400 - 0.0119))
    let Player10 = Player(name: "Brittany Gomez", league: "NPF", startTime: 0.0102, endTime: 0.0401, batSpeed: (0.0401 - 0.0102))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //All avaliable players
        players = [Player1, Player2, Player3, Player4, Player5, Player6, Player7, Player8, Player9, Player10]
        
        revisedPlayerList = retrieveList(timeParameter: batSpeedParameter, players: players)
    }
    
    //Determine the number of rows in the tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let newPlayersList = retrieveList(timeParameter: batSpeedParameter, players: players)
        return newPlayersList.count
    }
    
    //INSTRUCTIONS
    //With some list of test data, given a particular time - return the list of events which contain that time.
    //Setup the cells in the tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        //Get current list based upon parameters
        let current = revisedPlayerList[indexPath.row]
        cell.nameLabel.text = current.name
        cell.leagueLabel.text = current.league
        cell.startTimeLabel.text = "Batting start time: \(current.startTime)"
        cell.endTimeLabel.text = "Batting end time: \(current.endTime)"
        cell.batSpeedLabel.text = "Batting Speed: \(current.batSpeed)"
        return cell
    }
    
    //Function to return list given time parameter
    func retrieveList(timeParameter: Float, players: Array<Player>) -> Array<Player> {
        var newArray: Array<Player> = []
        for player in players{
            let playerBatSpeed = player.batSpeed
            if playerBatSpeed <= timeParameter{
                newArray.append(player)
            }
        }
        //returns an array of only the players that have a bat speed within the time parameter requested.  We can now display this new list in the UI.
        return newArray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

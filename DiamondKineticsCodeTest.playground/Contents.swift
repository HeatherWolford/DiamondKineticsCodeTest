//: Heather Wolford
import UIKit
//:# Diamond Kinetics Code Test
//:**Instructions:**
//:For the coding challenge, a lot of our data is time-based data. We have events which have distinct start times and end times. For instance, our swings have a lot of data associated with them and have a defined start time and end time in our model. The same can be said of videos and batting sessions. In the app challenge, I would like you to set up some sample data types that have a start time, end time, and some other piece of data. Then, with some list of test data, given a particular time - return the list of events which contain that time. The user interface and exact data types are entirely up to you - I'm interested to see how you approach this and what your code looks like to accomplish this.
/*:
**Part One:**
Set up some sample data types that have a start time, end time, and some other piece of data.
*/
let Player1: (name: String, league: String, startTime: Float, endTime: Float) = ("Andrew McCutchen", "MLB", 0.0123, 0.0391)
let Player2: (name: String, league: String, startTime: Float, endTime: Float) = ("Roberto Clemente", "MLB", 0.0124, 0.0402)
let Player3: (name: String, league: String, startTime: Float, endTime: Float) = ("Willie Stargell", "MLB", 0.0125, 0.0417)
let Player4: (name: String, league: String, startTime: Float, endTime: Float) = ("Starling Marte", "MLB", 0.0126, 0.0365)
let Player5: (name: String, league: String, startTime: Float, endTime: Float) = ("Jung-ho Kang", "MLB", 0.0136, 0.0366)
let Player6: (name: String, league: String, startTime: Float, endTime: Float) = ("Hayley Flynn", "NPF", 0.0111, 0.0401)
let Player7: (name: String, league: String, startTime: Float, endTime: Float) = ("Whitney Arion", "NPF", 0.0134, 0.0444)
let Player8: (name: String, league: String, startTime: Float, endTime: Float) = ("Emma Johnson", "NPF", 0.0101, 0.0401)
let Player9: (name: String, league: String, startTime: Float, endTime: Float) = ("Stacy Porter", "NPF", 0.0119, 0.0400)
let Player10: (name: String, league: String, startTime: Float, endTime: Float) = ("Brittany Gomez", "NPF", 0.0102, 0.04011)

//Array of Tuples
let players: Array<(name: String, league: String, startTime: Float, endTime: Float)> = [Player1, Player2, Player3, Player4, Player5, Player6, Player7, Player8, Player9, Player10]
/*:
 **Part Two:**
 With some list of test data, given a particular time - return the list of events which contain that time.
 */
//Function to get bat speed
func batSpeed(endTime: Float, startTime: Float) -> Float {
    return endTime - startTime
}

//Function to return list given time parameter
func retrieveList(timeParameter: Float, players: Array<(name: String, league: String, startTime: Float, endTime: Float)>) -> Array<(name: String, league: String, startTime: Float, endTime: Float)> {
    var newArray: Array<(name: String, league: String, startTime: Float, endTime: Float)> = []
    for player in players{
        let endTime = player.endTime
        let startTime = player.startTime
        let playerBatSpeed = batSpeed(endTime: endTime, startTime: startTime)
        if playerBatSpeed <= timeParameter{
            newArray = [player]
        }
    }
    //returns an array of only the players that have a bat speed within the time parameter requested.  We can now display this new list in the UI.
    return newArray
}
/* Project 1
 Soccer Coordinator */


// Dictionary for each player
let player1: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "YES", "Guardian(s)": "Jim and Jan Smith"]
let player2: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "YES", "Guardian(s)": "Clara Tanner"]
let player3: [String: String] = ["Name": "Bill Bon", "Height": "43", "Experience": "YES", "Guardian(s)": "Sara and Jenny Bon"]
let player4: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "NO","Guardian(s)": "Wendy amd Mike Gordon"]
let player5: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "NO", "Guardian(s)": "Charles and Sylvia Gill"]
let player6: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Experience": "NO", "Guardian(s)": "Bill and Hillary Stein"]
let player7: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "NO", "Guardian(s)": "Jeff Adams"]
let player8: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "YES", "Guardian(s)": "Heather Bledsoe"]
let player9: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "YES", "Guardian(s)": "Henrietta Dumas"]
let player10: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "NO", "Guardian(s)": "Gala Dali"]
let player11: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "NO", "Guardian(s)": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "NO", "Guardian(s)": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "YES", "Guardian(s)": "Robin and Sarika Soto"]
let player14: [String: String] = ["Name": "Chole Alaska", "Height": "47", "Experience": "NO", "Guardian(s)": "David and Jamie Alaska"]
let player15: [String: String] = ["Name": "Arnold Wills", "Height": "43", "Experience": "NO", "Guardian(s)": "Claire Wills"]
let player16: [String: String] = ["Name": "Phillp Helm", "Height": "44", "Experience": "YES", "Guardian(s)": "Thomas Helm and Eva Jones"]
let player17: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "YES", "Guardian(s)": "Wynonna Brown"]
let player18: [String: String] = ["Name": "Herschel Krustofskit", "Height": "45", "Experience": "YES", "Guardian(s)": "Hyman and Rachel Krustofski"]


// Array of Dictionaries for Entire League
var disorganizedEntireLeague: [[String: String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//Array of Dictionaries for the 3 teams
var teams: [[String: String]] = [
    ["Name": "Dragons", "Date": "March 17, 1pm"],
    ["Name": "Sharks", "Date": "March 17, 3pm"],
    ["Name": "Raptors", "Date": "March 18, 1pm"]
]

// Array of Beginners and Pro's
var beginnerPlayers: [[String: String]] = []
var proPlayers: [[String: String]] = []


// Sorting Beginners and Pro players
for player in disorganizedEntireLeague {
    if player["Experience"] == "YES" {
        proPlayers.append(player)
    }
    else {
        beginnerPlayers.append(player)
    }
}
// also organiz height of players

//--------------------------------------------------

proPlayers = proPlayers.sort { $0["Height"] < $1["Height"] }
proPlayers
beginnerPlayers = beginnerPlayers.sort { $0["Height"] < $1["Height"] }
beginnerPlayers


//Experiments----------------------------------------------------------------------
var orderedAllPlayers: [[String: String]] =  (proPlayers) + (beginnerPlayers)
while orderedAllPlayers.count > 0 {
    var one = orderedAllPlayers.removeFirst()
   // var two = orderedAllPlayers.removeLast()
   // var three = orderedAllPlayers.removeLast()
    
}


//----------------------------------------------------------------------
/*
var proPlayersPerTeam = proPlayers.count / teams.count
var beginnerPlayersPerTeam = beginnerPlayers.count / teams.count

var dragons: [[String:String]] = []

func addProPlayers(var team:[[String:String]]) {
    for i in 0...2 {
        var start = i * proPlayersPerTeam
        var end = i + proPlayersPerTeam
        if (end >= proPlayers.count) {
            end = proPlayers.count - 1
        }
    
        team.appendContentsOf(proPlayers[start...end])
    }
}


//var dragons: [[String:String]] = []
//dragons.appendContentsOf(beginnerPlayers[0...3])
//dragons.appendContentsOf(proPlayers[0...1])


var sharks: [[String:String]] = []
sharks.appendContentsOf(beginnerPlayers[4...7])
sharks.appendContentsOf(proPlayers[2...3])


var raptors: [[String:String]] = []
raptors.appendContentsOf(beginnerPlayers[8...10])
raptors.appendContentsOf(proPlayers[4...6])
*/

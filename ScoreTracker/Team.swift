//
//  Team.swift
//  ScoreTracker
//
//  Created by Student on 10/15/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class Team {
    var name: String
    var games: [Game]
    
    init(name: String) {
        self.name = name
        self.games = []
    }
    
    
    
    
    
    
    
    // MARK: - Seed Data
    
    static func seedTeams() -> [Team] {
        var newTeams: [Team] = []
        let lions = Team(name: "Detroit Lions")
        let seahawks = Team(name: "Seattle Seahawks")
        
        newTeams.append(lions)
        newTeams.append(seahawks)
        print(newTeams.count)
        
        
        newTeams = Game().seedLionsGames(newTeams)
        return newTeams
    }
    
    
    
}
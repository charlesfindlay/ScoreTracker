//
//  Game.swift
//  ScoreTracker
//
//  Created by Student on 10/15/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

class Game {
    weak var home: Team?
    weak var away: Team?
    var homeScore: Int
    var awayScore: Int
    
    init() {
        self.homeScore = 0
        self.awayScore = 0
    }
    
    
    func seedLionsGames(teams: [Team]) -> [Team] {
        
        let homeTeam = teams[1]
        let awayTeam = teams[0]
        let newGame = Game()
        newGame.home = homeTeam
        newGame.away = awayTeam
        newGame.homeScore = 13
        newGame.awayScore = 10
        homeTeam.games.append(newGame)
        awayTeam.games.append(newGame)
        
        return teams
    }
}
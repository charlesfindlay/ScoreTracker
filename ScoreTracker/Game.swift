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
        self.home = Team()
        self.away = Team()
        self.homeScore = 0
        self.awayScore = 0
    }
}
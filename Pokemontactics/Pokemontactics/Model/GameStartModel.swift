//
//  GameStartModel.swift
//  Pokemontactics
//
//  Created by Shin Takeuchi on 2023/12/23.
//

import Foundation

struct GameStartModel {
    var selectedTab = 1
    var player1 = Player()
    var player2 = Player()
    var limitTime: Int = 75
}

class Player {
    var name = ""
    var deck = ""
}

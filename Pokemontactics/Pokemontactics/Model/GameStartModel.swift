//
//  GameStartModel.swift
//  Pokemontactics
//
//  Created by Shin Takeuchi on 2023/12/23.
//

import Foundation

struct GameStartModel {
    var selectedTab = 1
    var firstplayer = Player()
    var secondplayer = Player()
    var limitTime: Int = 25
}

class Player {
    var name = ""
    var deck = ""
}

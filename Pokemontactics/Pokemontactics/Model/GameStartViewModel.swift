//
//  GameStartViewModel.swift
//  Pokemontactics
//
//  Created by Shin Takeuchi on 2023/12/23.
//

import Foundation

@MainActor
class GameStartViewModel: ObservableObject {
    enum Field: Hashable {
        case name
        case deck
    }

    @Published var model: GameStartModel
    
    init(model: GameStartModel) {
        self.model = model
    }
    
    var selectedTab: Int {
        get {
            return model.selectedTab
        }
        set {
            model.selectedTab = newValue
        }
    }
    
    var firstPlayerName: String {
        get {
            return model.firstplayer.name
        }
        set {
            model.firstplayer.name = newValue
        }
    }
    
    var firstPlayerDeck: String {
        get {
            return model.firstplayer.deck
        }
        set {
            model.firstplayer.deck = newValue
        }
    }
    
    var secondPlayerName: String {
        get {
            return model.secondplayer.name
        }
        set {
            model.secondplayer.name = newValue
        }
    }
    
    var secondPlayerDeck: String {
        get {
            return model.secondplayer.deck
        }
        set {
            model.secondplayer.deck = newValue
        }
    }
    
    var limitTime: Int {
        get {
            return model.limitTime
        }
        set {
            model.limitTime = newValue
        }
    }

    var forcusedField: Field?
    
    func changeTab(tabId: Int) {
        self.selectedTab = tabId
        switch tabId {
        case 1:
            self.limitTime = 25
        case 2:
            self.limitTime = 75
        default:
            self.limitTime = 25
        }
    }
    
    func saveData() {
        NSLog("firstPlayerName: " + model.firstplayer.name)
        NSLog("firstPlayerDeck: " + model.firstplayer.deck)
        NSLog("secondPlayerName: " + model.secondplayer.name)
        NSLog("secondPlayerDeck: " + model.secondplayer.deck)
        NSLog("limitTime: " + String(model.limitTime))
    }
}

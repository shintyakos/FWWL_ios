//
//  GameStartViewModel.swift
//  Pokemontactics
//
//  Created by Shin Takeuchi on 2023/12/23.
//

import Foundation

@MainActor
class GameStartViewModel: ObservableObject {
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
            return model.player1.name
        }
        set {
            model.player1.name = newValue
        }
    }
    
    var firstPlayerDeck: String {
        get {
            return model.player1.deck
        }
        set {
            model.player1.deck = newValue
        }
    }
    
    var secondPlayerName: String {
        get {
            return model.player2.name
        }
        set {
            model.player2.name = newValue
        }
    }
    
    var secondPlayerDeck: String {
        get {
            return model.player2.deck
        }
        set {
            model.player2.deck = newValue
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
        NSLog("firstPlayerName: " + model.player1.name)
        NSLog("firstPlayerDeck: " + model.player1.deck)
        NSLog("secondPlayerName: " + model.player2.name)
        NSLog("secondPlayerDeck: " + model.player2.deck)
        NSLog("limitTime: " + String(model.limitTime))
    }
}

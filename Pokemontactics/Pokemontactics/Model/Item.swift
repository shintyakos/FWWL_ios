//
//  Item.swift
//  Pokemontactics
//
//  Created by ShinTakeuchi on 2023/11/20.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

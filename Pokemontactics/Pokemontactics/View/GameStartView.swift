//
//  GameStartView.swift
//  Pokemontactics
//
//  Created by ShinTakeuchi on 2023/11/26.
//

import SwiftUI

struct GameStartView: View {
//    @Binding var selection: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
        }
        .padding(0)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color(red: 0.95, green: 0.9, blue: 0.67))
        .navigationTitle("ゲーム設定")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct GameStartView_Previews: PreviewProvider {
    static var previews: some View {
        GameStartView()
    }
}

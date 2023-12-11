//
//  HomeView.swift
//  Pokemontactics
//
//  Created by ShinTakeuchi on 2023/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    
    init() {
        _ = CustomNavigationBar()
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                VStack(alignment: .leading, spacing: 90) {
                    CustomButton(title: "ゲーム開始", color: CustomColor.boosterColor) {
                        path.append(HomePath.gameStartPath)
                    }
                    
                    CustomButton(title: "ログ閲覧", color: CustomColor.leafeonColor) {
                        path.append(HomePath.logViewPath)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.95, green: 0.9, blue: 0.67))
                .ignoresSafeArea()
                .navigationBarTitle("PokeTactics")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    trailing: Button(action: {
                        path.append(HomePath.settingsPath)
                    }) {
                        Image(systemName: "gearshape")
                        .foregroundColor(.white)
                    }.accessibilityIdentifier("settingsButton"))
                .navigationDestination(for: HomePath.self) { path in
                    switch path {
                    case .gameStartPath: GameStartView().toolbarRole(.editor)
                    case .logViewPath: LogView()
                    case .settingsPath: SettingsView()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

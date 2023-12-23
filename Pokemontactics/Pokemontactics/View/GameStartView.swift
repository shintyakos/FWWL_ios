//
//  GameStartView.swift
//  Pokemontactics
//
//  Created by ShinTakeuchi on 2023/11/26.
//

import SwiftUI

struct GameStartView: View {
    @StateObject var viewModel: GameStartViewModel = GameStartViewModel(model: GameStartModel())

    private var safeareaInsets: UIEdgeInsets? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        return windowScene?.windows.first?.safeAreaInsets
    }

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                TabBarView(viewModel: viewModel)
                VStack(alignment: .center, spacing: 27) {
                    ZStack {
                        VStack(alignment: .center, spacing: 10) {
                            Text("プレイヤー１")
                                .font(Font.custom("Roboto", size: 18).weight(.bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.white)
                            HStack {
                                Text("名前：")
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .foregroundColor(.white)
                                TextField("プレイヤー名を入力してください", text: $viewModel.firstPlayerName)
                                    .textFieldStyle(.roundedBorder)
                                    .foregroundColor(Color(red: 0.75, green: 0.63, blue: 0.5))
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .frame(height: 30)
                                    .cornerRadius(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 3)
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.75, green: 0.63, blue: 0.5), lineWidth: 2)
                                        
                                    )
                            }
                            HStack {
                                Text("デッキ：")
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .foregroundColor(.white)
                                TextField("デッキ名を入力してください", text: $viewModel.firstPlayerDeck)
                                    .textFieldStyle(.roundedBorder)
                                    .foregroundColor(Color(red: 0.75, green: 0.63, blue: 0.5))
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .frame(height: 30)
                                    .cornerRadius(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 3)
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.75, green: 0.63, blue: 0.5), lineWidth: 2)
                                        
                                    )
                            }
                        }
                        .padding(10)
                    }
                    .frame(width: 324, height: 120)
                    .background(Color(red: 0.43, green: 0.75, blue: 0.27))
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.23, green: 0.45, blue: 0.18), lineWidth: 1)
                    )
                    
                    ZStack {
                        VStack(alignment: .center, spacing: 10) {
                            Text("プレイヤー２")
                                .font(Font.custom("Roboto", size: 18).weight(.bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.white)
                            HStack {
                                Text("名前：")
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .foregroundColor(.white)
                                TextField("プレイヤー名を入力してください", text: $viewModel.secondPlayerName)
                                    .textFieldStyle(.roundedBorder)
                                    .foregroundColor(Color(red: 0.75, green: 0.63, blue: 0.5))
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .frame(height: 30)
                                    .cornerRadius(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 3)
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.75, green: 0.63, blue: 0.5), lineWidth: 2)
                                        
                                    )
                            }
                            HStack {
                                Text("デッキ：")
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .foregroundColor(.white)
                                TextField("デッキ名を入力してください", text: $viewModel.secondPlayerDeck)
                                    .textFieldStyle(.roundedBorder)
                                    .foregroundColor(Color(red: 0.75, green: 0.63, blue: 0.5))
                                    .font(Font.custom("Roboto", size: 18).weight(.bold))
                                    .frame(height: 30)
                                    .cornerRadius(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 3)
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.75, green: 0.63, blue: 0.5), lineWidth: 2)
                                        
                                    )
                            }
                        }
                        .padding(10)
                    }
                    .frame(width: 324, height: 120)
                    .background(Color(red: 0.53, green: 0.8, blue: 0.95))
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.18, green: 0.35, blue: 0.58), lineWidth: 1)
                    )
                    
                    Text("制限時間：\(viewModel.limitTime)分")
                        .font(
                            Font.custom("Roboto", size: 16)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.44, green: 0.26, blue: 0.08))
                    
                    CustomButton(title: "対戦開始", color: CustomColor.leafeonColor) {
                        viewModel.saveData()
                    }
                }
                .padding(.horizontal, 0)
                .padding(.top, 32)
                .padding(.bottom, 40)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
        }
        .padding(0)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color(red: 0.95, green: 0.9, blue: 0.67))
        .navigationBarTitle("ゲーム開始")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TabBarView: View {
    @ObservedObject var viewModel: GameStartViewModel
    
    init(viewModel: GameStartViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            VStack(alignment: .center, spacing: 0) {
                Spacer().frame(height: 13)
                Text("シングル戦")
                  .font(
                    Font.custom("Roboto", size: 14)
                      .weight(.bold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(self.viewModel.selectedTab == 1 ? Color.white : Color(red: 0.2, green: 0.23, blue: 0.25).opacity(0.39))
                Spacer().frame(height: 16)
                Divider()
                    .frame(maxWidth: .infinity, maxHeight: 2)
                    .background(viewModel.selectedTab == 1 ? Color.white : Color(red: 0.94, green: 0.5, blue: 0.19))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(self.viewModel.selectedTab == 1 ? Color(red: 0.94, green: 0.5, blue: 0.19) : Color(red: 1, green: 0.85, blue: 0.73)
            )
            .onTapGesture {
                viewModel.changeTab(tabId: 1)
            }
            VStack {
                Spacer().frame(height: 13)
                Text("マッチ戦")
                  .font(Font.custom("Roboto", size: 14))
                  .multilineTextAlignment(.center)
                  .foregroundColor(self.viewModel.selectedTab == 2 ? Color.white : Color(red: 0.2, green: 0.23, blue: 0.25).opacity(0.39))
                Spacer().frame(height: 16)
                Divider()
                    .frame(maxWidth: .infinity, maxHeight: 2)
                    .background(self.viewModel.selectedTab == 2 ? Color.white : Color(red: 0.94, green: 0.5, blue: 0.19))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(viewModel.selectedTab == 2 ? Color(red: 0.94, green: 0.5, blue: 0.19) : Color(red: 1, green: 0.85, blue: 0.73)
            )
            .onTapGesture {
                viewModel.changeTab(tabId: 2)
            }
        }
        .padding(0)
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}

struct GameStartView_Previews: PreviewProvider {
    static var previews: some View {
        GameStartView()
    }
}

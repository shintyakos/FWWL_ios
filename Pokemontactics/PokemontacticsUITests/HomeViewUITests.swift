//
//  HomeViewUITests.swift
//  PokemontacticsUITests
//
//  Created by ShinTakeuchi on 2023/11/26.
//

import XCTest

final class HomeViewUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testNavigationToGameStart() {
            app.buttons["ゲーム開始"].tap()
            XCTAssertTrue(app.otherElements["GameStartView"].exists)
        }
        
        func testNavigationToLogView() {
            app.buttons["ログ閲覧"].tap()
            XCTAssertTrue(app.otherElements["LogView"].exists)
        }
        
        func testSettingsButtonTap() {
            app.buttons["settingsButton"].tap()
            XCTAssertTrue(app.otherElements["SettingsView"].exists)
        }
}

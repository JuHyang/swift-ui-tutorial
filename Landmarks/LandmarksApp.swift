//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 이주향 on 2021/06/08.
//

import SwiftUI

@main // 이 앱의 진입점을 식별한다.
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}

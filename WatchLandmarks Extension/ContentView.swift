//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by 이주향 on 2021/06/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

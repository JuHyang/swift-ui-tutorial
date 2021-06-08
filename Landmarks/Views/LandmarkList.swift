//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 이주향 on 2021/06/08.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink(destination : LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
        }
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                    LandmarkList()
//                        .previewDevice(PreviewDevice(rawValue: deviceName))
//                }
    }
}

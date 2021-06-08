//
//  ContentView.swift
//  Landmarks
//
//  Created by 이주향 on 2021/06/08.
//

import SwiftUI

struct ContentView: View { // View 프로토콜을 따르며 보기의 내용과 레이아웃을 설명
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider { // 해당 구조에 대한 미리보기 선언
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

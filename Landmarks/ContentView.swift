//
//  ContentView.swift
//  Landmarks
//
//  Created by 이주향 on 2021/06/08.
//

import SwiftUI

struct ContentView: View { // View 프로토콜을 따르며 보기의 내용과 레이아웃을 설명
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height : 300)
            
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment : .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text gones here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider { // 해당 구조에 대한 미리보기 선언
    static var previews: some View {
        ContentView()
    }
}

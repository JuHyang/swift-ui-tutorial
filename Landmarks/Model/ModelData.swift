//
//  ModelData.swift
//  Landmarks
//
//  Created by 이주향 on 2021/06/08.
//

import Foundation
import Combine

final class ModelData : ObservableObject { // SwiftUI는 관찰 가능한 객체를 구독하고 데이터가 변경 될 때 새로 고쳐야하는 뷰를 업데이트합니다.
    @Published var landmarks : [Landmark] = load("landmarkData.json")
}



func load<T : Decodable>(_ filename : String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource : filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//
//  APIService.swift
//  FetchAPI
//
//  Created by A Farhan Agustiansyah on 10/02/23.
//

import Foundation
import SwiftUI

class APIService: ObservableObject {
    let objectWillChange = ObjectWillChangePublisher()
    @Published var datatotal = [Total]() {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        guard let url = URL(string: "https://data.covid19.go.id/public/api/update.json") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(CovidResponse.self, from: data)
            if let result = result {
                DispatchQueue.main.async {
                    self.datatotal = [result.update.total]
                    print(self.datatotal)
                }
            }
        }.resume()
    }
}

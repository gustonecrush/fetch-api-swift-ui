//
//  ContentView.swift
//  FetchAPI
//
//  Created by A Farhan Agustiansyah on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetch = APIService()
    
    var body: some View {
        Text("Hello, world!").onAppear {
            print(fetch.datatotal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

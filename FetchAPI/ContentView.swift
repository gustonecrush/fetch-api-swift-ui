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
        VStack {
            ForEach(fetch.datatotal) { data in
                // column 1
                HStack(spacing: 10) {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "heart.fill").foregroundColor(Color.white)
                            Text("Sembuh").font(.headline).foregroundColor(Color.white)
                            Text("\(data.jumlah_sembuh)").font(.headline).foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    .frame(height: 100).padding().background(Color.green).cornerRadius(20)
                    
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "plus.circle.fill").foregroundColor(Color.white)
                            Text("Positif").font(.headline).foregroundColor(Color.white)
                            Text("\(data.jumlah_positif)").font(.headline).foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    .frame(height: 100).padding().background(Color.blue).cornerRadius(20)
                }
                
                // column 2
                HStack(spacing:10) {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bed.double.fill").foregroundColor(Color.white)
                            Text("Dirawat").font(.headline).foregroundColor(Color.white)
                            Text("\(data.jumlah_sembuh)").font(.headline).foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    .frame(height: 100).padding().background(Color.orange).cornerRadius(20)
                    
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "waveform.patch.ecg").foregroundColor(Color.white)
                            Text("Meninggal").font(.headline).foregroundColor(Color.white)
                            Text("\(data.jumlah_positif)").font(.headline).foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    .frame(height: 100).padding().background(Color.pink).cornerRadius(20)
                }
                Spacer()
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Covid.swift
//  FetchAPI
//
//  Created by A Farhan Agustiansyah on 10/02/23.
//

import Foundation
import SwiftUI

struct Total: Codable, Identifiable {
    var id = UUID()
    let jumlah_positif: Int
    let jumlah_meninggal: Int
    let jumlah_sembuh: Int
    let jumlah_dirawat: Int
}

struct Update: Codable {
    let total: Total
}

struct CovidResponse: Codable {
    var update: Update
}

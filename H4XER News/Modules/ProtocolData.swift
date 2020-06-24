//
//  ProtocolData.swift
//  H4XER News
//
//  Created by Dmitry Semenuk on 12/01/2020.
//  Copyright © 2020 Dmitry Semenuk. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [ProtocolData]
}

struct ProtocolData: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}

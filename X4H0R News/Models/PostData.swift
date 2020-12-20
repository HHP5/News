//
//  PostData.swift
//  X4H0R News
//
//  Created by Екатерина Григорьева on 20.12.2020.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

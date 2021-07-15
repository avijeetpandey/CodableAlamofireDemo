//
//  JokeModel.swift
//  CodableAlamofireDemo
//
//  Created by Avijeet Pandey on 16/07/21.
//

import Foundation

struct JokeData: Codable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
    
}

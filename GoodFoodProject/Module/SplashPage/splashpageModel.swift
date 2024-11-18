//
//  splashpageModel.swift
//  GoodFoodProject
//
//  Created by Aleph-AHV2D on 18/11/24.
//

import Foundation

struct splashpageModel: Codable {
    var versionDesc: String
    var backgroundColor: String
    var logoImg: String
    
    enum CodingKeys: String, CodingKey {
        case versionDesc = "versionDesc"
        case backgroundColor = "backgroundColor"
        case logoImg = "logoImg"
    }
}

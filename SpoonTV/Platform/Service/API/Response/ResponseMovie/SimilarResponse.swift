//
//  ResultSimilar.swift
//  SpoonTV
//
//  Created by Nam Ngây on 9/4/20.
//  Copyright © 2020 Nam Ngây. All rights reserved.
//

import Foundation
import ObjectMapper

final class SimilarResponse: Mappable {
    var resultSimilar = [SimilarMovie]()
    
    required init(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        resultSimilar <- map["results"]
    }
}

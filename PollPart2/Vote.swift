//
//  Vote.swift
//  PollPart2
//
//  Created by Enayatullah Naseri on 5/8/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation

class Vote {
    var name: String
    var response: String
    
    init (name: String, response: String){
        self.name = name
        self.response = response
    }
}

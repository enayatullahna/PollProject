//
//  VoteController.swift
//  PollPart2
//
//  Created by Enayatullah Naseri on 5/8/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation

class VoteController {
    var votes: [Vote] = []{didSet{
        print("Did set votes")
        }}
    
    func createVote(with name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}

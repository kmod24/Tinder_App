//
//  MatchCellViewModel.swift
//  Tinder_App
//
//  Created by Kyle Modina on 5/8/24.
//

import Foundation

struct MatchCellViewModel {
    
    let nameText: String
    let profileImageUrl: URL?
    let uid: String
    
    init(match: Match) {
        nameText = match.name
        profileImageUrl = URL(string: match.profileImageUrl)
        uid = match.uid
    }
    
}

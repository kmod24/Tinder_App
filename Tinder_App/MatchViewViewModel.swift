//
//  MatchViewViewModel.swift
//  Tinder_App
//
//  Created by Kyle Modina on 5/5/24.
//

import Foundation

struct MatchViewViewModel {
    private let currentUser: User
    let matchedUser: User
    
    let matchLabelText: String
    
    var currentUserImageURL: URL?
    var matchedUserImageURL: URL?
    
    
    
    init(currentUser: User, matchedUser: User) {
        self.currentUser = currentUser
        self.matchedUser = matchedUser
        
        matchLabelText = "You and \(matchedUser.name) have liked each other"
        
        guard let imageUrlString = currentUser.imageURLs.first else { return }
        guard let matchedImageUrlString = matchedUser.imageURLs.first else { return }
        
        currentUserImageURL = URL(string: imageUrlString)
        matchedUserImageURL = URL(string: matchedImageUrlString)
    }
}

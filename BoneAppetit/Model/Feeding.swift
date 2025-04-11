//
//  Feeding.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

struct Feeding: Identifiable {
    
    // MARK: Stored properties
    
    // Unique identifier, automatically populated
    let id = UUID()
    
    // The time of day this feeding is ideally scheduled for
    let time: Date
    
    // Whether this feeding has been completed or not
    var completed: Bool
    
    // MARK: Initializer(s)
    
    // Gets an instance of this class ready to use
    init(
        hour: Date,
        completed: Bool = false
    ) {
        self.time = hour
        self.completed = completed
    }
    
}

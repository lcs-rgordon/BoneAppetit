//
//  Day.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

@Observable
class Day: Identifiable {
    
    // MARK: Stored properties
    
    // Unique identifier, automatically populated
    let id = UUID()
    
    // The day that the feedings should occur on
    let date: Date
    
    // The list of anticipated feedings for this day
    let feedings: [Feeding]
    
    // MARK: Initializer(s)
    
    // Gets an instance of this class ready to use
    //
    // NOTE: "date" parameter defaults to the current day.
    init(
        date: Date = Date(),
        feedings: [Feeding]
    ) {
        self.date = date
        self.feedings = feedings
    }
    
}

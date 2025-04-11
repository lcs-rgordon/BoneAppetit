//
//  Day.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

struct Day: Identifiable {
    
    // MARK: Stored properties
    
    // Unique identifier, automatically populated
    let id = UUID()
    
    // The day that the feedings should occur on
    let date: Date
    
    // The list of anticipated feedings for this day
    var feedings: [Feeding]
    
    // MARK: Initializer(s)
    
    // Gets an instance of this class ready to use
    //
    // NOTE: "date" parameter defaults to the current day.
    init(
        date: Date = Date()
    ) {
        self.date = date
        
        // To start, this is hard-coded to be the feeding schedule for my dog, Piper
        //
        // NOTE: Used this page as a reference:
        //
        // https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
        self.feedings = [
            
            // 7 AM
            Feeding(hour: Calendar.current.date(from: DateComponents(hour: 7)) ?? .now),

            // 11 AM
            Feeding(hour: Calendar.current.date(from: DateComponents(hour: 11)) ?? .now),

            // 3 PM
            Feeding(hour: Calendar.current.date(from: DateComponents(hour: 15)) ?? .now),

            // 7 PM
            Feeding(hour: Calendar.current.date(from: DateComponents(hour: 19)) ?? .now),

        ]
    }
    
}

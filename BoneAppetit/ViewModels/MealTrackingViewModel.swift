//
//  MealTrackingViewModel.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

@Observable
class MealTrackingViewModel {
    
    // An array to track all completed days
    var history: [Day] = []
    
    // The current day of feedings
    var currentDay = Day()
    
}

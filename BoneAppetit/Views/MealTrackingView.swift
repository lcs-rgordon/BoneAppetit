//
//  ContentView.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import SwiftUI

struct MealTrackingView: View {
    
    // MARK: Stored properties
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {

            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .navigationTitle("Bone Appétit")

        }
    }
}

#Preview {
    MealTrackingView()
}

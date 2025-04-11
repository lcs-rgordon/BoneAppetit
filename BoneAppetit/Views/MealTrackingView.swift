//
//  ContentView.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2025-04-11.
//

import SwiftUI

struct MealTrackingView: View {
    
    // MARK: Stored properties
    @State var viewModel = MealTrackingViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {

            VStack(alignment: .leading) {

                Text("Piper")
                    .font(.title)
                    .bold()
                    .padding(.top)
                
                Divider()
                
                Text(viewModel.currentDay.date.formatted(date: .complete, time: .omitted))
                    .font(.title2)
                    .bold()
                
                List($viewModel.currentDay.feedings) { $currentFeeding in
                    
                    HStack(alignment: .top) {
                        
                        Text(currentFeeding.time, format: .dateTime.hour())
                            .font(.title2)
                            .padding(.bottom, 20)
                        
                        Spacer()
                        
                        Toggle("Completed", isOn: $currentFeeding.completed)
                            .labelsHidden()
                        
                    }
                    
                }
                .listStyle(.plain)
                .navigationTitle("Bone Appétit 🦴")

            }
            .padding(.horizontal)

        }
    }
}

#Preview {
    MealTrackingView()
}

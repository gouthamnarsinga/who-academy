//
//  ContentView.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import SwiftUI
import Combine

struct ContentView: View {
       
    
    var topics = [Topic(id: 0, title: "Diagnosis for health care", iconColor: .green, count: 4),
                  Topic(id: 1, title: "Primary care practises", iconColor: .purple, count: 5),
                  Topic(id: 2, title: "Prevention of illness", iconColor: .yellow, count: 2),
                  Topic(id: 3, title: "General medecine", iconColor: .cyan, count: 1),
                  Topic(id: 4, title: "Internal medecine", iconColor: .red, count: 3),
                  Topic(id: 5, title: "Blood specialists", iconColor: .orange, count: 2)]
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(topics, id: \.id) { topic in
                    NavigationLink(destination: TeamsView(topic: topic)) {
                        TopicRow(topic: topic)
                    }
                    
                }
            }
            .navigationTitle("Topics")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.grouped)
            .padding(.top, -30)
            
        }
    }
}

#Preview {
    ContentView()
}

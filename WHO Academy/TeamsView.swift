//
//  TeamsView.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import SwiftUI

struct TeamsView: View {
    let topic: Topic
    let teams = [Team(id: 0, title: "Team A", iconColor: .purple, memberCount: 12),
                 Team(id: 1, title: "Team B", iconColor: .green, memberCount: 20),
                 Team(id: 2, title: "Team C", iconColor: .yellow, memberCount: 42),
                 Team(id: 3, title: "Team D", iconColor: .cyan, memberCount: 12),
                 Team(id: 4, title: "Team E", iconColor: .green, memberCount: 20),
                 Team(id: 5, title: "Team F", iconColor: .yellow, memberCount: 42),
                 Team(id: 6, title: "Team G", iconColor: .cyan, memberCount: 12)
                 
    ]
    var body: some View {
        NavigationView{
            List {
                ForEach(0..<topic.count, id: \.self) { index in
                    ZStack(alignment: .leading) {
                        NavigationLink(
                            destination: TeamDetailView(topic: topic, team: teams[index])) {
                                EmptyView()
                            }
                            .opacity(0)
                        
                        TeamsRow(team: teams[index], topic: topic)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Teams")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top, -30)
            .listStyle(.grouped)
        }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        let mockTopic = Topic(id: 1, title: "Diagnosis for health care", iconColor: Color.green, count: 4)
        TeamsView(topic: mockTopic)
    }
}

//
//  TeamsView.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import SwiftUI
import Combine

struct TeamsView: View {
    let topic: Topic
    @State private var intValue:Int = 0
    
    var body: some View {
        Group {
            NavigationView{
                List {
                    ForEach(generateStructArray(count: topic.count), id: \.id) { team in
                        ZStack(alignment: .leading) {
                            NavigationLink(
                                destination: TeamDetailView(topic: topic, team: team)) {
                                    EmptyView()
                                }
                                .opacity(0)
                            
                            TeamsRow(team: team, topic: topic)
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
    
    func generateStructArray(count: Int) -> [Team] {
            var array: [Team] = []
            
            for i in 0...count-1 {
                let randomNumber = Int.random(in: 1...100)
                let color = Color.random()
                let team = Team(id: i, title: "Team \(convertToAlphabets("\(i)"))", iconColor: color, memberCount: randomNumber)
                array.append(team)
            }
            return array
        }
    func convertToAlphabets(_ input: String) -> String {
        let numbersToAlphabets: [Character: String] = [
            "0": "A", "1": "B", "2": "C",
            "3": "D", "4": "E", "5": "F",
            "6": "G", "7": "H", "8": "I",
            "9": "J"
        ]

        return input.map { numbersToAlphabets[$0] ?? String($0) }.joined()
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        let mockTopic = Topic(id: 1, title: "Diagnosis for health care", iconColor: Color.green, count: 4)
        TeamsView(topic: mockTopic)
    }
}

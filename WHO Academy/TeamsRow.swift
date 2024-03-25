//
//  TeamsRow.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import SwiftUI

struct TeamsRow: View {
    let team: Team
    let topic: Topic
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(team.iconColor.opacity(0.4))
                    .frame(width: 35, height: 35)
                    .cornerRadius(8.0)
                    .overlay {
                        Image(systemName: "person.2.fill")
                            .resizable()
                            .frame(width: 20, height: 15)
                    }
                
                Text("\(String(topic.title.split(separator: " ")[0])) - \(team.title)")
                    .fontWeight(.medium)
            }
            Text(team.description)
                .font(.system(size: 14.0))
            HStack {
                Image(systemName: "globe")
                    .foregroundColor(.black)
                    .frame(width: 20.0, height: 20.0)
                Text(team.language)
                    .font(.system(size: 12.0))
                
                Spacer()
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 120.0, height: 35.0)
                    .border(.gray)
                    .cornerRadius(20.0)
                    .overlay {
                        Text("\(team.memberCount) MEMBERS")
                            .font(.system(size: 12.0))
                    }
            }
        }
        .padding(25.0)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
                .padding(10.0)
        )
    }
}

struct TeamsRow_Previews: PreviewProvider {
    static var previews: some View {
        let mockTeam = Team(id: 1, title: "Team A", iconColor: Color.green, memberCount: 12)
        let mockTopic = Topic(id: 1, title: "Diagnosis for health care", iconColor: Color.green, count: 4)
        
        TeamsRow(team: mockTeam, topic: mockTopic)
    }
}

//
//  TopicRow.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import SwiftUI

struct TopicRow: View {
    let topic: Topic
    
    var body: some View {
        HStack (spacing: 12) {
            Rectangle()
                .fill(topic.iconColor.opacity(0.4))
                .frame(width: 35, height: 35)
                .cornerRadius(8.0)
                .overlay {
                    Image(systemName: "folder")
                        .resizable()
                        .frame(width: 20, height: 15)
                }
            Text(topic.title)
            Spacer()
           Rectangle()
                .fill(Color.clear)
                .border(.gray, width: 1)
                .frame(width: 25.0, height: 25.0)
                .cornerRadius(8.0)
                .overlay {
                    Text("\(topic.count)")
                        .font(.system(size: 14.0))
                        .multilineTextAlignment(.center)
                }
        }
        .padding(4)
    }
}

struct TopicRow_Previews: PreviewProvider {
    static var previews: some View {
        let mockTopic = Topic(id: 1, title: "Diagnosis for health care", iconColor: Color.green, count: 4)
        TopicRow(topic: mockTopic)
    }
}

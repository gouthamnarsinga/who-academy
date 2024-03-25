//
//  Topics.swift
//  WHO Academy
//
//  Created by ce_user on 25/03/24.
//

import Foundation
import SwiftUI

struct Topic {
    let id: Int
    let title: String
    let iconColor: Color
    let count: Int
}

struct Team {
    let id: Int
    let title: String
    let iconColor: Color
    let memberCount: Int
    let language: String = "English"
    let description: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit posuere mi, eget ultrices nisi porta in. Nam ligula libero, placerat eu eros quis, feugiat hendrerit risus."
}

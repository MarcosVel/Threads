//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 04/07/25.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies

    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }

    var id: Int { return self.rawValue }
}

//
//  Teacher.swift
//  Actor Isolation
//
//  Created by Paul Huynh on 2023-09-18.
//
import Foundation

actor Teacher {
    let id = UUID()
    var students: [Student] = []
}

let teacher1 = Teacher()
let teacher2 = Teacher()

extension Teacher {
    static func compare(_ item1: Teacher, _ item2: Teacher) -> Bool {
        item1 == item2
    }
}

// Equatable

extension Teacher: Equatable {
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        lhs.id == rhs.id
    }
}

// Hashable conformance
extension Teacher: Hashable {
    nonisolated var hashValue: Int { id.hashValue }
    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

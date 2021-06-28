//
//  Question.swift
//  TopQuestionsUIKit
//
//  Created by Jesus Cruz on 26/06/21.
//

import Foundation

// MARK: - Question
struct Question {
    let id: Int
    let score: Int
    let answerCount: Int
    let viewCount: Int
    let title: String
    let body: String?
    let date: Date
    let tags: [String]
    var owner: User?
}

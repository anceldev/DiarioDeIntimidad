//
//  Daily.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Foundation


class Daily: Identifiable {
    @DocumentID var id: String?
    var chapters: [Chapter]
    var verses: [Verse]?
    var likedVerse: String?
    var question: String?
    var priorities: String?
    var prayer: String?
    var timestamp: Date
    
    init(id: String? = nil, chapters: [Chapter] = [], verses: [Verse]? = [], likedVerse: String? = nil, question: String? = nil, priorities: String? = nil, prayer: String? = nil, timestamp: Date){
        self.id = id
        self.chapters = chapters
        self.verses = verses
        self.likedVerse = likedVerse
        self.question = question
        self.priorities = priorities
        self.prayer = prayer
        self.timestamp = timestamp
    }
}

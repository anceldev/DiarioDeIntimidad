//
//  ViewModel.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation


@MainActor
class ViewModel: ObservableObject{
    @Published var diaries: [Daily]
    @Published var chapter: Chapter?
    var service = ApiService()
    
    init(diaries: [Daily] = [], chapter: Chapter? = nil) {
        self.diaries = diaries
        self.chapter = chapter
    }
    
//    func searchBook(book: BooksList, version: Version) async throws {
    func searchBook(book: BooksList, version: Version) throws {
        
        let url = "https://bible-api.deno.dev/api" + version.uri + book.rawValue + "/1"
        print(url)
        
        Task {
            do {
                let chapter: Chapter = try await service.makeRequest(url)
                self.chapter = chapter
            } catch {
                print("Error getting chapter from api: \(error.localizedDescription)")
            }
        }
    }
}

//
//  BibleView.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import SwiftUI

struct BibleView: View {
    @StateObject var viewModel = ViewModel()
    @State private var version = Version.rv1960
    @State private var book = BooksList.genesis
    @State private var verses: [Verse] = []
    @State var isSearchingBook = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                VStack {
                    HStack {
                        Text("Version")
                            
                        Spacer()
                        Picker("Version", selection: $version) {
                            ForEach(Version.allCases) { version in
                                Text(version.rawValue)
                                    .tag(version)
                            }
                        }
                    }
                    HStack {
                        Picker("Libro", selection: $book) {
                            ForEach(BooksList.allCases) { book in
                                Text(book.spanish)
                                    .tag(book)
                            }
                        }
                        Spacer()
                        Button {
                            print("Searching \(book.rawValue)")
                            searchChapter()
                        } label: {
                            Text("Search")
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.pumpkinOrange)
                    }
                }
                
                .fontWeight(.bold)
                VStack(alignment: .leading) {
                    if isSearchingBook {
                        ProgressView()
                    } else {
                        if let verses = viewModel.chapter?.vers {
                            ForEach(verses) { verse in
                                Text("\(verse.number)")
                                    .font(.footnote)
                                    .foregroundStyle(.gray).bold()
                                Text(verse.verse)
                            }
                        }
                    }
                }
            }
            .padding(20)
        }
    }
    private func searchChapter() {
        isSearchingBook = true
        do {
            viewModel.chapter = nil
            try viewModel.searchBook(book: book, version: version)
            
        } catch {
            print("Error: \(error.localizedDescription)")
        }
        isSearchingBook = false
    }
}

#Preview {
    BibleView()
}

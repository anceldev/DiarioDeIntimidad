//
//  ViewModel.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation


@MainActor
final class ViewModel: ObservableObject{
    @Published var diaries: [Daily]
    
    init(diaries: [Daily] = []) {
        self.diaries = diaries
    }
    
    func addDailyToDB() {
        
    }
}

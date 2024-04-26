//
//  RouterDestination.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import Foundation
import SwiftUI

public enum RouterDestination: Hashable {
    case dailyView
    case dailyListView
    case mainTabView
}

@MainActor
extension View {
    func withAppRouter() -> some View {
        navigationDestination(for: RouterDestination.self) { destination in
            switch destination {
            case .dailyView:
                DailyView()
            case .dailyListView:
                DailyListView()
            case .mainTabView:
                MainTabView()
            }
        }
    }
}

@MainActor
public class RouterPath: ObservableObject {
    @Published public var path: [RouterDestination] = []
    
    public func navigate(to: RouterDestination) {
        path.append(to)
    }
    public func pop(){
        path.removeLast()
    }
}

//
//  MainTabView.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: Tab = .bible
    
    init() {
//        UITabBar.appearance().isHidden = true
//        UITabBar.appearance()
    }
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    TabView(selection: $selectedTab) {
                        DailyView()
                            .tag(Tab.daily)
                        BibleView()
                            .tag(Tab.bible)
                        ProfileView()
                            .tag(Tab.profile)
                    }
                }
                VStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
        .navigationTitle("Daily List")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MainTabView()
}

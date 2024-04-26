//
//  MainTabView.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: Tab = .daily
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
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
        .navigationTitle("Daily List")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MainTabView()
}

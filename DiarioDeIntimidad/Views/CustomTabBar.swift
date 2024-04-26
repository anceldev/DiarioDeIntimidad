//
//  CustomTabBar.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case daily
    case bible
    case profile
    
    var icon: String {
        switch self {
        case .daily: "calendar.circle"
        case .bible: "book.closed"
        case .profile: "person"
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.icon + ".fill"
    }
    private var tabColor: Color {
        switch selectedTab {
        case .daily:
            return .blue
        case .bible:
            return .green
        case .profile:
            return .red
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.icon)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundStyle(tab == selectedTab ? tabColor : .gray)
                        .font(.system(size: 20))
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.daily))
}

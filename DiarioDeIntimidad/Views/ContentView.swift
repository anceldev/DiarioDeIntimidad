//
//  ContentView.swift
//  DiarioDeIntimidad
//
//  Created by Ancel Dev account on 26/4/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var routerPath = RouterPath()
    
    var body: some View {
        NavigationStack(path: $routerPath.path) {
            VStack {
                Image(systemName: "cross")
                    .resizable()
                    .size(size: 60)
                    .foregroundStyle(.tint)
                Text("Diario de Intimidad")
                    .font(.title)
                Text("Nuevo Testamento en 365 días")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                Button("Navigate to Daily List") {
                    routerPath.navigate(to: .mainTabView)
                }
                .withAppRouter()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

extension Image {
    func size(size: CGFloat) -> some View {
        self
            .resizable()
            .frame(width: size, height: size)
    }
}

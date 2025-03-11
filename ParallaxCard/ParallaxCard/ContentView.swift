//
//  ContentView.swift
//  ParallaxCard
//
//  Created by Nino Kurshavishvili on 11.03.25.
//

import SwiftUI

struct ContentView: View {
    let planets = ["Planet 1", "Planet 2", "Planet 3", "Planet 4"]
    @State private var currentIndex = 0

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(planets.indices, id: \.self) { index in
                    PlanetCard(planetName: planets[index])
                        .padding(.horizontal, 20)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            HStack(spacing: 8) {
                ForEach(planets.indices, id: \.self) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(currentIndex == index ? .white : .gray.opacity(0.5))
                }
            }
            .padding(.top, -150)
        }
        .background(Color.black.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}




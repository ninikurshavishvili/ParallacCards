//
//  PlanetCard.swift
//  ParallaxCard
//
//  Created by Nino Kurshavishvili on 11.03.25.
//


import SwiftUI

struct PlanetCard: View {
    let planetName: String
    @State var ValueTranslation: CGSize = .zero
    @State var isDragging = false

    var body: some View {
        ZStack {
            Image("Stars")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 380)
                .offset(x: ValueTranslation.height / 10, y: ValueTranslation.width / 10)
            
            Image(planetName)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .offset(x: ValueTranslation.height / 5, y: ValueTranslation.width / 5)
        }
        .offset(x: ValueTranslation.height / 10, y: ValueTranslation.width / 10)
        .frame(width: 350, height: 350)
        .background(Color.customBackgroundColor.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .rotation3DEffect(
            .degrees(isDragging ? 10 : 0),
            axis: (x: ValueTranslation.height, y: ValueTranslation.width, z: 0.0))
        .gesture(DragGesture()
            .onChanged({ value in
                withAnimation {
                    ValueTranslation = value.translation
                    isDragging = true
                }
            })
            .onEnded({ _ in
                withAnimation {
                    ValueTranslation = .zero
                    isDragging = false
                }
            })
        )
    }
}

#Preview {
    PlanetCard(planetName: "Planet 1")
}

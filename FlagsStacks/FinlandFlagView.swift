//
//  ContentView.swift
//  FlagsStacks
//
//  Created by Raul Pele on 25.07.2022.
//

import SwiftUI

struct UpperSectionHStack: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<4) {number in
                Color.white
            }
            ForEach(0..<2) {number in
                Color("FinlandBlue")
            }
            ForEach(0..<8) {number in
                Color.white
            }
        }
    }
}

struct UpperSectionView: View {
    var body: some View {
        ForEach(0..<2) {number in
            UpperSectionHStack()
        }
    }
}

struct MiddleSectionHStack: View {
    var body: some View {
        HStack {
            Color("FinlandBlue")
        }
    }
}

struct MiddleSectionView: View {
    var body: some View {
       MiddleSectionHStack()
    }
}

struct FinlandFlagView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                UpperSectionView()
                MiddleSectionView()
                UpperSectionView()
            }
            .frame(height: 300)
            .padding(.horizontal)
        }
    }
}

struct FinlandFlagView_Previews: PreviewProvider {
    static var previews: some View {
        FinlandFlagView()
            .previewInterfaceOrientation(.portrait)
    }
}

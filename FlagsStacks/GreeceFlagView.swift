//
//  GreeceFlagView.swift
//  FlagsStacks
//
//  Created by Raul Pele on 26.07.2022.
//

import SwiftUI

struct TopLeftTopHStack: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<2) { number in
                Color("GreeceBlue")
            }
            
            Color.white
            
            ForEach(0..<2) { number in
                Color("GreeceBlue")
            }
        }
    }
}

struct TopLeftSectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<2) { number in
                TopLeftTopHStack()
            }
            
            Color.white
            
            ForEach(0..<2) { number in
                TopLeftTopHStack()
            }
        }
    }
}

struct TopRightSectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<5) { i in
                if i.isMultiple(of: 2) {
                    Color("GreeceBlue")
                } else {
                    Color.white
                }
            }
        }
    }
}

struct TopSectionView: View {
    var body: some View {
        HStack(spacing: 0) {
            TopLeftSectionView()
            TopRightSectionView()
            TopRightSectionView()
        }
    }
}

struct BottomSectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<4) { i in
                if i.isMultiple(of: 2) {
                    Color.white
                } else {
                    Color("GreeceBlue")
                }
            }
        }
    }
}

struct GreeceFlagView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                TopSectionView()
                BottomSectionView()
            }
            .frame(height: 250)
            .padding(.horizontal)
        }
    }
}

struct GreeceFlagView_Previews: PreviewProvider {
    static var previews: some View {
        GreeceFlagView()
    }
}

//
//  DetailImageView.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import SwiftUI

struct DetailImageView: View {
    @StateObject var viewModel: DetailViewModel
    
    var body: some View {
        GeometryReader { geometry in
            ImageView(imageName: "panda", geometry: geometry, shouldFillWholeScreen: true)
        }
        .ignoresSafeArea()
        .overlay(alignment: .topTrailing) {
            CircleXmarkButton {
                withAnimation(.easeInOut) {
                    viewModel.isPresented.toggle()
                }
            }
        }
        .transition(.move(edge: .top))
    }
}

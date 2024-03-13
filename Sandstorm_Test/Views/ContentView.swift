//
//  ContentView.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            GeometryReader { geometry in
                VStack {
                    ImageView(imageName: "panda", geometry: geometry, shouldFillWholeScreen: false)
                    HStack(spacing: 20) {
                        CustomButton(title: viewModel.lockTopButton ? "Unlock" : "Lock") {
                            viewModel.lockTopButton.toggle()
                        }
                        .padding(.leading, 20)
                        CustomButton(title: "Open from top") {
                            withAnimation(.easeInOut) {
                                viewModel.isDetailViewPresented.toggle()
                            }
                        }
                        .opacity(viewModel.lockTopButton ? 0.5 : 1)
                        .disabled(viewModel.lockTopButton)
                        .padding(.trailing, 20)
                    }
                    Spacer()
                    CustomButton(title: "Open full") {
                        
                    }
                    .padding(.bottom, 20)
                    .frame(maxWidth: geometry.size.width - 40)
                }
            }
        }
        .overlay {
            if viewModel.isDetailViewPresented {
                DetailImageView(isPresented: $viewModel.isDetailViewPresented)
            }
        }
    }
}


#Preview {
    ContentView()
}

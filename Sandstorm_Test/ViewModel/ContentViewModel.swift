//
//  ContentViewModel.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var lockTopButton = false
    @Published var isDetailViewPresented = false
    
    func imageHeight(for screenHeight: CGFloat) -> CGFloat {
        return screenHeight * 0.3
    }
}

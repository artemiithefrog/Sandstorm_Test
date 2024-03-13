//
//  ImageView.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import SwiftUI

struct ImageView: View {
    
    let imageName: String
    let geometry: GeometryProxy
    let shouldFillWholeScreen: Bool
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: shouldFillWholeScreen ? nil : 150,
                   height: shouldFillWholeScreen ? nil : geometry.size.height * 0.3,
                   alignment: .leading)
            .clipped()
    }
}


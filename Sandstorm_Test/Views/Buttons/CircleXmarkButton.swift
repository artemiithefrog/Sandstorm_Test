//
//  CircleXmarkButton.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import SwiftUI

struct CircleXmarkButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark")
                .resizable()
                .foregroundColor(.white)
                .padding(10)
        }
        .background(Color.gray)
        .frame(width: 32, height: 32)
        .clipShape(Circle())
        .padding(20)
    }
}

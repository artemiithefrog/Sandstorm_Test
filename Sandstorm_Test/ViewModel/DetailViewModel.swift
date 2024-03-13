//
//  DetailViewModel.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Binding var isPresented: Bool

    init(isPresented: Binding<Bool>) {
        _isPresented = isPresented
    }
}

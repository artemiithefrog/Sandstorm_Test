//
//  DetailViewModel.swift
//  Sandstorm_Test
//
//  Created by artemiithefrog . on 13.03.2024.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Binding var isPresented: Bool
    
    var view: DetailImageView {
        DetailImageView(viewModel: self)
    }
    
    init(isPresented: Binding<Bool>) {
        _isPresented = isPresented
    }
}

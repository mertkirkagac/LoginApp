//
//  Button.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 3.04.2023.
//

import SwiftUI

struct ButtonTasa: ViewModifier {
    
    func body(content: Content) -> some View {
        
        return content
            .foregroundColor(.white)
            .padding(.horizontal,35)
            .padding(.vertical)
            .background(
                LinearGradient(gradient: .init(colors: [Color.pink,Color.pink]), startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(Capsule())   
    }
}



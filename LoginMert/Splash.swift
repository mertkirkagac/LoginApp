//
//  Splash.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 4.04.2023.
//

import SwiftUI

struct Splash: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        
        if isActive{
            
            ContentView()
        }else{
            VStack{
                VStack{
                    
                    Image("mert3")
                        .font(.system(size: 5))
                        
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        self.isActive = true
                    }
                    
                    
                }
            }
        }
        
        
    }
}



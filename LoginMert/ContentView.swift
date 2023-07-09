//
//  ContentView.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 3.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView(){
            
            Giris(show: false, show1: false)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
        
    }
}


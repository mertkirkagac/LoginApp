//
//  UnutSıfre.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 4.04.2023.
//

import SwiftUI

struct UnutS_fre: View {
    @State var email = ""
    
    @Binding var show : Bool
    
    @Namespace var animasyon
    
    var body: some View {
        VStack{
            
            HStack{
                
                Button(action: {show.toggle()}){
                    
                    Image(systemName: "arrow.left")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                    
                }
                
                Spacer()
            }
            .padding()
            .padding(.leading)
            
            HStack{
                
                Text("Şifremi Unuttum")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.pink)
                
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "envelope", title: "Mail Adresi", value: $email, animasyon: animasyon)
            
            HStack{
                
                Spacer()
                
                Button(action:{}){
                    HStack(spacing : 10){
                        
                        Text("Kod Gönder")
                            .fontWeight(.heavy)
                        Image(systemName: "arrow.right")
                            .font(.title2)
                        
                    }
                    .modifier(ButtonTasa())
                }
            }
            .padding()
            .padding(.top)
            .padding(.trailing)
            
            Spacer(minLength: 0)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            
    }
}


//
//  CustomTextField.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 3.04.2023.
//

import SwiftUI

struct CustomTextField: View {
    
    var image : String
    var title : String
    @Binding var value : String
    
    var animasyon : Namespace.ID
    
    var body: some View {
        
        VStack(spacing : 6){
            
            HStack(alignment: .bottom){
                
                Image(systemName: image)
                    .font(.system(size: 22))
                    .foregroundColor(value == "" ? .gray : .primary)
                    .frame(width: 35)
                
                
                VStack(alignment: .leading,spacing: 6) {
                    
                    if value == ""{
                        
                        Text(title)
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: title, in: animasyon)
                    }
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                        
                        if value == ""{
                            
                            Text(title)
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(.gray)
                                .matchedGeometryEffect(id: title, in: animasyon)
                        }
                        
                        if title == "" {
                            SecureField("", text : $value)
                        
                        }
                        else{
                            
                            TextField("", text : $value)
                                .keyboardType(title == "Telefon Numarası" ? .numberPad : .default)
                        }
                        
                        
                    }
                }
                
            }
            
            if value == ""{
                
                Divider()
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(Color("renk").opacity(value != "" ? 1 : 0))
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1),radius: 5,x: 5 ,y: 5)
        .shadow(color: Color.black.opacity(0.05),radius: 5,x: -5 ,y: -5)
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear)
        
    }
}

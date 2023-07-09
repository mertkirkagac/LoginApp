//
//  Kayit.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 3.04.2023.
//

import SwiftUI

struct Kayit: View {
    @State var email = ""
    @State var sifre = ""
    @State var name = ""
    @State var numara = ""
    
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
                
                Text("Hesap Oluştur")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.pink)
                
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "person", title: "İsim Soyisim", value: $name, animasyon: animasyon)
            CustomTextField(image: "envelope", title: "Email", value: $email, animasyon: animasyon)
                .padding(.top,5)
            
            CustomTextField(image: "lock", title: "Şifre", value: $sifre, animasyon: animasyon)
                .padding(.top,5)
            CustomTextField(image: "phone.fill", title: "Telefon Numarası", value: $numara, animasyon: animasyon)
                .padding(.top,5)
            
            HStack{
                
                Spacer()
                
                Button(action:{}){
                    HStack(spacing : 10){
                        
                        Text("Kayıt Ol")
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

 

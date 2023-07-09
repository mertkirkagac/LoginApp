//
//  Giris.swift
//  LoginMert
//
//  Created by Mert Kırkağaç on 3.04.2023.
//

import SwiftUI

struct Giris: View {
    @State var email = ""
    @State var sifre = ""
    
    @State var show : Bool
    
    @State var show1 : Bool
    
    
    @Namespace var animasyon
    
    
    var body: some View {
        VStack{
            
            Spacer(minLength: 0)
            
            HStack{
                VStack(alignment: .leading,spacing: 10) {
                    Text("Giriş")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.pink)
                    
                    Text("Lütfen giriş yapınız")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                Spacer(minLength: 0)
                
            }
            .padding()
            .padding(.leading)
            
            CustomTextField(image: "envelope", title: "EMAIL", value: $email,animasyon: animasyon)
            
            CustomTextField(image: "lock", title: "Şifre", value: $sifre,animasyon: animasyon)
                .padding(.top,5)
            
            HStack{
                
                Spacer(minLength: 0)
                
                VStack(alignment: .trailing,spacing: 20) {
                    
                    NavigationLink(destination:UnutS_fre(show: $show1), isActive: $show1) {
                        
                        Text("Şifreni mi unuttun ?")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.pink)
                        
                        
                    }
                    
                    Button(action:{}){
                        HStack(spacing : 10){
                            
                            Text("GİR")
                                .fontWeight(.heavy)
                            Image(systemName: "arrow.right")
                                .font(.title2)
                            
                        }
                        .modifier(ButtonTasa())
                    }
                    
                }
            }
            .padding()
            .padding(.top,10)
            .padding(.leading)
            
            Spacer(minLength: 0)
            
            HStack(spacing : 8){
                
                Text("Hesabınız yok mu ?")
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                NavigationLink(destination: Kayit(show : $show),isActive : $show) {
                    
                    Text("KAYIT OL")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                    
                    
                }
                .padding()
                
                
            }
        }
    }
}

//
//  SigninView.swift
//  AnimatedApp
//
//  Created by Youssef Eldeeb on 31/07/2023.
//

import SwiftUI

struct SigninView: View {
    
    @State var animatedBackground: Double = 3.0
    @State var email: String = ""
    
    var body: some View {
        
        
        VStack(spacing: 25){
            Text("Sign in")
                .font(.title)
                .bold()
            Text("Access to 240÷ hours of content.\n Learn design and code, by building real apps with React and Swift.")
                .font(.headline).opacity(0.7)
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading){
                Text("Email")
                    .font(.headline)
                    .foregroundColor(.secondary)
                SecureField("", text: $email)
                    .customTextField(image: "Icon Email")
                    
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("Forget Password")
                        .font(.headline)
                        .foregroundColor(.secondary)
                }
                
                TextField("", text: $email)
                    .customTextField(image: "Icon Lock")
                    
            }
            
            
            HStack{
                Rectangle().frame(height: 1).opacity(0.2)
                Text("OR").opacity(0.3).font(.headline)
                Rectangle().frame(height: 1).opacity(0.2)
            }
            
            Text("Sign up with Email, Apple or Google")
                .font(.headline)
                .opacity(0.7)
            HStack{
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
            
        }//: VStack
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.4), radius: 9, x: 0, y: 3)
        .shadow(color: Color("Shadow").opacity(0.4), radius: 30, x: 0, y: 30)
        .padding()
        
//        ZStack{
//
//        }//: ZStack
//        .background(
//            Image("Spline")
//                .blur(radius: 30)
//                .padding(.top, 200)
//                .scaleEffect(0.8 + CGFloat(animatedBackground))
//        )
//        .onAppear {
//            withAnimation(Animation.easeOut(duration: 3).repeatForever(autoreverses: true)) {
//                animatedBackground = 1
//            }
//        }
        
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

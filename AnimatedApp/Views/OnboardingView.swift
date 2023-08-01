//
//  OnboardingView.swift
//  AnimatedApp
//
//  Created by Youssef Eldeeb on 30/07/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var animatedBackground: Double = 0.0
    @State var showModel = false
    
    var body: some View {
        ZStack{
            content
//                .offset(y: showModel ? -50 : 0)
    
            Color("Shadow")
                .opacity(showModel ? 0.4 : 0)
                .ignoresSafeArea()
            if showModel{
                SigninView()
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .overlay {
                        Button {
                            withAnimation(.spring()){
                                showModel = false
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .frame(width: 36, height: 36, alignment: .center)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                                .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                        .frame(maxHeight: .infinity, alignment: .bottom)
                    }
                    .zIndex(1)
            }
        }
        
    }
    
    var content: some View{
        VStack(spacing: -10){
            HStack{
                Spacer()
                Button {
                    // action
                } label: {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.black)
                        .frame(width: 100, height: 100, alignment: .center)
                        .font(.largeTitle)
                        .imageScale(.large)
                }
            }//: HStack
            VStack(alignment: .leading ,spacing: 20) {
                
                
                Text("Learn design & code")
                    .font(.system(size: 65))
                    .fontWeight(.bold)
                    .frame(width: 260, alignment: .leading)
                
                Text("Don't skip desian. Learn desian and code, by building real apps with React and Swift. Complete courses about the best tools.")
                    .font(.system(size: 20))
                    .opacity(0.7)
                
                Spacer()
                Rectangle()
                    .foregroundColor(.pink)
                    .frame(width: 80, height: 80, alignment: .center)
                    .roundedCorner(25, corners: [.bottomLeft, .bottomRight, .topRight])
                    .roundedCorner(10, corners: [.topLeft])
                    .overlay(alignment: .bottomLeading) {
                        Button {
                            // action
                            DispatchQueue.main.asyncAfter(deadline: .now()+0.5,execute: {
                                withAnimation(.spring()){
                                    showModel = true
                                }
                            })
                        } label: {
                            Image(systemName: "creditcard")
                                .foregroundColor(Color.pink)
                                .font(.title3)
                            Text("Start the course")
                                .foregroundColor(.black)
                                .font(.title3)
                                .bold()
                        }
                        .frame(width: 250, height: 60, alignment: .center)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(20)
                    }
                Text("Don't skip desian. Learn desian and code, by building real apps with React and Swift. Complete courses about the best tools.")
                    .font(.system(size: 15))
                    .opacity(0.7)
            }//: VStack
            .ignoresSafeArea()
            .padding([.leading, .trailing, .bottom], 30)
            
           
        }//: VStack
        .background(
            Image("Spline")
                .blur(radius: 30)
                .scaleEffect(0.8 + CGFloat(animatedBackground))
        )
        .onAppear {
            withAnimation(Animation.easeOut(duration: 3).repeatForever(autoreverses: true)) {
                animatedBackground = 1
            }
        }

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

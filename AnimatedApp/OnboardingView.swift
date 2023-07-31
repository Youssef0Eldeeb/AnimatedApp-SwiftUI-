//
//  OnboardingView.swift
//  AnimatedApp
//
//  Created by Youssef Eldeeb on 30/07/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var animatedBackground: Double = 0.0
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    // action
                } label: {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.black)
                        .frame(width: 100, height: 100, alignment: .bottom)
                        .font(.largeTitle)
                        .imageScale(.large)
                }
            }
            
            Text("Learn design & code")
                .font(.system(size: 60))
                .fontWeight(.bold)
                .padding(.trailing, 60)
            
            Text("Don't skip desian. Learn desian and code, by building real apps with React and Swift. Complete courses about the best tools.")
                .padding(.horizontal, 40)
                .font(.system(size: 20))
                
            Spacer()
            Rectangle()
                .foregroundColor(.pink)
                .frame(width: 60, height: 80, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.trailing, 250 )
                .overlay(alignment: .bottomLeading) {
                    Button {
                        // action
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
                    .padding(.trailing, 60)
                }
            
            
            

            Text("Don't skip desian. Learn desian and code, by building real apps with React and Swift. Complete courses about the best tools.")
                .font(.system(size: 15))
                .padding([.leading, .bottom, .trailing], 40)
                .padding(.top, 10)
            
        }//: VStack
        .ignoresSafeArea()
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

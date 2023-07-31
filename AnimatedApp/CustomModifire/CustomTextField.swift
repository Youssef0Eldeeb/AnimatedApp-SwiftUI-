//
//  CustomTextField.swift
//  AnimatedApp
//
//  Created by Youssef Eldeeb on 01/08/2023.
//

import SwiftUI


struct CustomTextField: ViewModifier{
    var imageName: String = ""
    func body(content: Content) -> some View {
        content
            .padding(15)
            .padding(.leading, 36)
            .background(.white)
            .mask(RoundedRectangle(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke()
                    .fill(.black.opacity(0.2))
            }
            .overlay {
                Image(imageName)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
            }
    }
}

extension View{
    func customTextField(image: String) -> some View{
        modifier(CustomTextField(imageName: image))
    }
}

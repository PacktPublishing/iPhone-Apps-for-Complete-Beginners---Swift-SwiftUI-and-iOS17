//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Nick Walter on 8/24/23.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .bold()
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    CustomButtonView(title: "Tap Me!", color: .blue)
}

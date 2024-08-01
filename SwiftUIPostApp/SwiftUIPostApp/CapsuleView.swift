//
//  CapsuleView.swift
//  SwiftUIPostApp
//
//  Created by Matvei Khlestov on 31.07.2024.
//

import SwiftUI

struct CapsuleView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 112, height: 32)
                .foregroundStyle(.appGray)
            Text("Погода")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CapsuleView()
}

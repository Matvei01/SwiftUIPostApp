//
//  PhotoView.swift
//  SwiftUIPostApp
//
//  Created by Matvei Khlestov on 31.07.2024.
//

import SwiftUI

struct PhotoView: View {
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(.freddy)
                .resizable()
                .frame(width: 282, height: 518)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            Image(systemName: "ellipsis")
                .frame(width: 31, height: 31)
                .foregroundStyle(.white)
                .padding([.trailing, .top], 20)
        }
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    PhotoView()
}

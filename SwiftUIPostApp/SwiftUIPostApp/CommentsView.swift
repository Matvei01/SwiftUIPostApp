//
//  CommentsView.swift
//  SwiftUIPostApp
//
//  Created by Matvei Khlestov on 31.07.2024.
//

import SwiftUI

struct CommentsView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                Text("16.12.23")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(.white)
                Text("fhfhrhfjrfrfjrfjrjfjfjrjirfjfjijfrfifjrifrijfrfirfji")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 25)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    CommentsView()
}

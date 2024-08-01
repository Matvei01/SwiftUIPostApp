//
//  ContentView.swift
//  SwiftUIPostApp
//
//  Created by Matvei Khlestov on 30.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var rows = [
        GridItem(.flexible())
    ]
    
    @State var textEdit: String = "hhhggg"
    @State var textComment: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 63) {
                HeaderView()
                ScrollView(.vertical) {
                    VStack(spacing: 40) {
                        MainView(rows: $rows)
                        DescriptionView(textEdit: $textEdit)
                        AddCommentsView(textComment: $textComment)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.appBlack)
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .resizable()
                .frame(width: 22, height: 27)
                .foregroundStyle(.white)
            Spacer()
            VStack(alignment: .leading) {
                Text("16 декабря")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .bold))
                Text("2023 год")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .light))
            }
            Spacer()
            Spacer()
            Image(.burger)
                .resizable()
                .frame(width: 25, height: 25)
        }
        .padding(.horizontal, 20)
    }
}

struct MainView: View {
    
    @Binding var rows: [GridItem]
    
    var body: some View {
        VStack(spacing: 32) {
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 30) {
                    ForEach(0..<6) { _ in
                        PhotoView()
                    }
                }
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 12) {
                    ForEach(0..<6) { _ in
                        CapsuleView()
                    }
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct DescriptionView: View {
    
    @Binding var textEdit: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(maxWidth: .infinity, minHeight: 176)
                    .foregroundStyle(.black)
                TextEditor(text: $textEdit)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.white)
                    .padding(EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25))
                    .scrollContentBackground(.hidden)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .padding(.horizontal, 20)
    }
}

struct AddCommentsView: View {
    
    @Binding var textComment: String
    
    var body: some View {
        VStack(spacing: 31) {
            VStack(spacing: 14) {
                ForEach(0..<3) { _ in
                    CommentsView()
                }
            }
            HStack {
                TextField("Добавить комментарий", text: $textComment)
                    .padding(.leading, 25)
                    .frame(height: 48)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .padding(.horizontal, 20)
    }
}

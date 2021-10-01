//
//  FirstView.swift
//  BetterSwiftUI
//
//  Created by Thongchai Subsaidee on 1/10/21.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ScrollView {
            LazyHStack {
                PagingScrollView()
            }
        }
    }
}

private struct PagingScrollView: View {
    var body: some View {
        TabView {
            ForEach(0..<15) { i in
                ZStack {
                    Color.black
                    Text("Page \(i)")
                        .foregroundColor(.white)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .tabViewStyle(PageTabViewStyle())
    }
}



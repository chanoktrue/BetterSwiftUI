//
//  SecondView.swift
//  BetterSwiftUI
//
//  Created by Thongchai Subsaidee on 1/10/21.
//

import SwiftUI

struct SecondView: View {
    
    @State var currentPage = 4
    
    // I have problem when change scrollview start bottom
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {                
                VStack {
                    Text("I not use SwiftUIX")
                        .padding()
                    PagingScrollView()
                }
            }
        }
    }
}

private struct PagingScrollView: View {
    var body: some View {
        TabView {
            ForEach(0..<15) { i in
                ZStack {
                    Color.green
                    Text("Page: \(i)")
                        .foregroundColor(.white)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .tabViewStyle(PageTabViewStyle())
        .onAppear {
            setColorIndicator()
        }
    }
}

private func setColorIndicator() {
    UIPageControl.appearance().currentPageIndicatorTintColor = .white
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.green.withAlphaComponent(0.5)
}

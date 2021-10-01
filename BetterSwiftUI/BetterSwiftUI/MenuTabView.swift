//
//  MenuTabView.swift
//  BetterSwiftUI
//
//  Created by Thongchai Subsaidee on 1/10/21.
//

import SwiftUI

struct MenuTabView: View {
    var body: some View {
        TabView {
            
            FirstView()
                .padding()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Example 1")
                }
            
            SecondView()
                .padding()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Example 2")
                }
            
            ThridView()
                .padding()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Example 3")
                }
        }
    }
}


//
//  MainTabView.swift
//  Twitter Clone
//
//  Created by MohamedSafaoui on 12/13/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selecedIndex = 0
    var body: some View {
        TabView(selection: $selecedIndex) {
            FeedView()
                .onTapGesture {
                    self.selecedIndex = 0
                    
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            ExploreView()
                .onTapGesture {
                    self.selecedIndex = 1
                    
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            NotificationsView()
                .onTapGesture {
                    self.selecedIndex = 2
                    
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    self.selecedIndex = 3
                    
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

//
//  HomeTabbar.swift
//  TabViews
//
//  Created by Faraz Haider on 10/11/2021.
//

import SwiftUI

struct HomeTabbar: View {
    
    @State private var defaultView :Int = 2
    
    var body: some View {
        TabView(selection:$defaultView){
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            PlayView()
                .tabItem {
                    Text("Play")
                    Image(systemName: "play")
                }.tag(2)
            
            NotesView()
                .tabItem {
                    Text("Notes")
                    Image(systemName: "pencil")
                }.tag(3)
            
            MessageView()
                .tabItem {
                    Text("Message")
                    Image(systemName: "message")
                }.tag(4)
            
        }.accentColor(.red)
    }
}

struct HomeTabbar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbar()
    }
}

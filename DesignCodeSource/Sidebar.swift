//
//  Sidebar.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/29/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            #if os(iOS)
            content
                .navigationTitle("Learn")
            #else
            content
                .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            #endif

            CourcesView()

        }
    }
    
    var content: some View {
        List {
            NavigationLink(destination: CourcesView()) {
                Label("Courses", systemImage: "book.closed")
            }
            Label("Tutorials", systemImage: "list.bullet.rectangle")
            Label("Livestreams", systemImage: "tv")
            Label("Certificates", systemImage: "mail.stack")
            Label("Search", systemImage: "magnifyingglass")
            
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Learn")
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}

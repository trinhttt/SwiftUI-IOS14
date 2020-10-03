//
//  ContentView.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/27/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        CoursesView()
        #else
        Sidebar()
            .frame(minWidth: 1000, minHeight: 600)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

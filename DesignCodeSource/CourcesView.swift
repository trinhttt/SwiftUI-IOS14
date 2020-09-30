//
//  CourcesView.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/29/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct CourcesView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 800, idealWidth: 600)
        #endif
    }
    
    var content: some View {
        List(0 ..< 20) { item in
            CourceRow()
        }
        .navigationTitle("Courses")
    }
}

struct CourcesView_Previews: PreviewProvider {
    static var previews: some View {
        CourcesView()
    }
}

//
//  CourcesView.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/29/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct CourcesView: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            List(0 ..< 20) { item in
                CourceRow()
            }
            .listStyle(InsetGroupedListStyle())
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CourcesView_Previews: PreviewProvider {
    static var previews: some View {
        CourcesView()
    }
}

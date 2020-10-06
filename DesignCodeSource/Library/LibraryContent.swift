//
//  LibraryContent.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 10/7/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(CloseButton(),
                    title: "Close Button View",
                    category: .control
        )
        LibraryItem(CloseButton(),
                    title: "Close Button 2",
                    category: .control
        )
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.cardStyle(color: .blue, cornerRadius: 25),
            title: "Car style",
            category: .effect
        )
    }
    
}

extension View {
    func cardStyle(color: Color, cornerRadius: CGFloat) -> some View {
        return self
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
            .shadow(color: color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

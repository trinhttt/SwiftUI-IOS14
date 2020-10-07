//
//  SourceRow.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/29/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct CourseRow: View {
    var item: CourseSection = courseSections[0]
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.logo)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(item.color)
                .clipShape(Circle())
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 4.0) {
                Text(item.title)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.primary)
                Text(item.subtitle)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct SourceRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}

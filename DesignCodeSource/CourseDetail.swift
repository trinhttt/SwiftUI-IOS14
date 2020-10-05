//
//  CourseDetail.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 10/4/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct CourseDetail: View {
    var course: Course = courses[0]
    var namespace: Namespace.ID
    #if os(iOS)
    var cornerRadius: CGFloat = 10
    #else
    var cornerRadius: CGFloat = 0
    #endif
    @State var showModel = false
    
    var body: some View {
        #if os(iOS)
        content
        .edgesIgnoringSafeArea(.all)
        #else
        content
        #endif
    }
    
    var content: some View {
        VStack {
            ScrollView {
                CourseItem(course: course, cornerRadius: cornerRadius)
                    .matchedGeometryEffect(id: course.id, in: namespace)
                    .frame(height: 300)
                    
                VStack {
                    ForEach(courseSections) { item in
                        CourseRow(item: item)
                            .sheet(isPresented: $showModel) {
                                CourseSectionDetail()
                            }
                            .onTapGesture {
                                showModel = true
                            }
                        Divider()
                    }
                }
                .padding()
            }
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .matchedGeometryEffect(id: "container\(course.id)", in: namespace)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseDetail(namespace: namespace)
    }
}

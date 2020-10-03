//
//  CoursesView.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 10/2/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    var body: some View {
        ZStack {
            CourseItem()
                .frame(width: 335, height: 250)
            VStack {
                if show {
                    CourseItem()
                        .transition(.move(edge: .bottom))
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
//        .animation(.easeInOut)
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}

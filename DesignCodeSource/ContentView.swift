//
//  ContentView.swift
//  DesignCodeSource
//
//  Created by Trinh Thai on 9/27/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                HStack {
                    Spacer()
                    Image("Illustration 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
            }
            Text("SwiftUI IOS14")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Text("20 sections")
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(20.0)
        .shadow(radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: 200.0, height: 200.0))
                .preferredColorScheme(.dark)
        }
    }
}
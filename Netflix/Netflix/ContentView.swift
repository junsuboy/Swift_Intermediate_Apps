//
//  ContentView.swift
//  Netflix
//
//  Created by Junsu Jang on 2022/04/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let titles = ["Neflix Sample App"]
        NavigationView {
            List(titles, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

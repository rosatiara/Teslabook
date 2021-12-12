//
//  ContentView.swift
//  Shared
//
//  Created by T on 12/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {


    var body: some View {
        VStack {
            Text("test")
        }
    }


}

// automatic preview
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                    .preferredColorScheme(.dark)
                ContentView()
                    .preferredColorScheme(.light)
            }
        }
    }

//
//  ContentView.swift
//  Shared
//
//  Created by T on 12/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Image("tesla-name-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120, height:60)
                Spacer()
                Image("tesla-red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50, height:30)
            }.padding(.horizontal, 17)
            // search bar
                TextField("Search...", text: $text)
                    .padding(.horizontal, 10)
                    .padding(7)
                    .background(Color(.systemGray5))
                    .frame(width: 360, height: 40)
                    .cornerRadius(10)
            Spacer()

    }


}

// automatic preview
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView(text: .constant(""))
                    .preferredColorScheme(.light)
        }
    }
}

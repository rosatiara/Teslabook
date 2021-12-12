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
    let cars = ["car1", "car2", "car3", "car4", "car5"]
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
                    .background(Color(.systemGray6))
                    .frame(width: 360, height: 40)
                    .cornerRadius(10)
            Spacer()
            
            // feed section
            ZStack {
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(cars, id: \.self){
                                    car in
                                    Image(car)
                                        .resizable()
                                        .frame(width:140, height:200, alignment: .center)
                                        .clipped()
                                        .aspectRatio(contentMode: .fill)
                                        .hoverEffect(.lift)
                                }

                            }.padding()
                        }
                        Post(userImage: "elon", name: "Elon Musk", post: "Model S Plaid is sickkkk!!!!", details: "CEO at Tesla")
                             .padding(.horizontal,20)

                        Post(userImage: "andrej", name: "Andrej Karpathy", post: "Various computational workloads exhibit different amounts of parallelism and are accordingly best scheduled on CPU or GPU. Same is true for human organizations/projects/tasks, but it seems rarely analyzed from that perspective. Compiling a project to run fast on people is hard :)", details: "Director of AI at Tesla")
                             .padding(.horizontal,20)
                             .padding(.vertical,30)
                        Post(userImage: "elon", name: "Elon Musk", post: "Wow, only three weeks to 2022! What will 2032 will be like? Seems so futuristic! Will we be on Mars?", details: "Director of AI at Tesla")
                            .padding(.horizontal,20)
                            .padding(.vertical,30)
                    }
                }

            }

    }


}

    
    
    
struct Post: View {
    let userImage: String
    let name: String
    let post: String
    let details: String
    
        var body: some View {
            VStack {
                // user
                HStack {
                    Image(userImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50, alignment: .center)
                        .cornerRadius(25)
                    VStack {
                        HStack {
                            Text(name)
                                .foregroundColor(Color.black)
                                .font(.system(size: 18, weight: .bold, design: .default))
                            Spacer()
                        }
                        HStack {
                            Text(details)
                                .foregroundColor(Color.gray)
                                .font(.system(size:15, weight: .light))
                            Spacer()
                        }
                    }
                    Spacer()
                }
                // post
                HStack {
                    Text(post)
                        .padding(.vertical,12)
                        .font(.system(size:16,weight: .regular, design:. default))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                // buttons
                HStack {
                    Button(action:{
                        
                    }, label:{
                        Text("Like")
                    })
                    Button(action:{
                        
                    }, label:{
                        Text("Comment")
                    })
                    Spacer()
                    Button(action:{
                        
                    }, label:{
                        Text("Share")
                    })
                }.font(.system(size:14,weight: .regular, design: .default))
            }.background(Color(.systemBackground))
                .cornerRadius(7)
        }
    }
   
    
// automatic preview
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView(text: .constant(""))
        }
    }
}

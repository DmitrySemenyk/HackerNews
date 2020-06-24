//
//  ContentView.swift
//  H4XER News
//
//  Created by Dmitry Semenuk on 12/01/2020.
//  Copyright © 2020 Dmitry Semenuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailsView(url: post.url )) {
                    ExtractedView(title: post.title, id: post.id)
                }
                
            }
            .navigationBarTitle("H4XER News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ExtractedView: View {
    let title: String
    let id: String
    var body: some View {
        HStack {
            Text(id)
            Text(title)
            Spacer()
            Image(systemName: "arrowtriangle.right.square")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


let posts: [ProtocolData] = [
    
]


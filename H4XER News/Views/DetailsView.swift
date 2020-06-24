//
//  DetailsView.swift
//  H4XER News
//
//  Created by Dmitry Semenuk on 12/01/2020.
//  Copyright © 2020 Dmitry Semenuk. All rights reserved.
//

import SwiftUI


struct DetailsView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://google.com")
    }
}



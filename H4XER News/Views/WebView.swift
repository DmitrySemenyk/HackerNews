//
//  WebView.swift
//  H4XER News
//
//  Created by Dmitry Semenuk on 12/01/2020.
//  Copyright © 2020 Dmitry Semenuk. All rights reserved.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}

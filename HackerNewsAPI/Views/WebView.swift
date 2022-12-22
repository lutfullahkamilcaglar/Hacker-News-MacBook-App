//
//  WebView.swift
//  HackerNewsAPI
//
//  Created by Kamil Caglar on 22/12/2022.
//

import SwiftUI
import WebKit


struct WebView: NSViewRepresentable {
    
    let urlString: String?
    
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateNSView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}

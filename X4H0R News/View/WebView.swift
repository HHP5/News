//
//  WebView.swift
//  X4H0R News
//
//  Created by Екатерина Григорьева on 20.12.2020.
//

import Foundation
import WebKit
import  SwiftUI

struct WebView : UIViewRepresentable{
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
}

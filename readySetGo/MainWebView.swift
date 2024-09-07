//
//  MainWebView.swift
//  readySetGo
//
//  Created by 임정상 on 2024/09/08.
//

import SwiftUI
import WebKit

struct MainWebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MainWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MainWebView(urlToLoad: "https://www.naver.com")
    }
}

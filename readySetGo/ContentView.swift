//
//  ContentView.swift
//  readySetGo
//
//  Created by 임정상 on 2024/08/31.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var url: String = Bundle.main.WEBVIEW_URL
    
    var body: some View {
        MainWebView(urlToLoad: url)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

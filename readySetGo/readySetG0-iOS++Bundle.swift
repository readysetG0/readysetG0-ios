//
//  readySetG0-iOS++Bundle.swift
//  readySetGo
//
//  Created by 임정상 on 2024/10/01.
//

import Foundation

extension Bundle {
    
    var WEBVIEW_URL: String {
        guard let file = self.path(forResource: "local", ofType: "plist") else { return "" }
                
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        
        guard let key = resource["WEBVIEW_URL"] as? String else {
            fatalError("WEBVIEW_URL을 불러오는 데 실패했습니다.")
        }
        return key
    }
}

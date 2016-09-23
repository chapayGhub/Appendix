//
//  NSURL+Appendix.swift
//  Appendix
//
//  Created by Wesley Cope on 7/16/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation

public extension NSURL {
    public func append(queryString: String = "") -> NSURL? {
        guard let absoluteString = absoluteString else { return nil }
        
        let urlString = absoluteString + "?\(queryString)"
        
        return NSURL(string: urlString)!
    }
}

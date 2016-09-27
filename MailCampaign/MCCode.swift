//
//  MCCode.swift
//  MailCampaign
//
//  Created by Bastian Wirth on 27/09/2016.
//  Copyright © 2016 Bastian Wirth. All rights reserved.
//

import Foundation

struct MCCode {
    
    enum CodeType {
        case html
    }
    
    
    var type = CodeType.html
    var code: String?
    
}

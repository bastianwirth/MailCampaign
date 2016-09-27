//
//  MCCampaign.swift
//  MailCampaign
//
//  Created by Bastian Wirth on 27/09/2016.
//  Copyright © 2016 Bastian Wirth. All rights reserved.
//

import Cocoa

class MCCampaign: NSObject, NSTextViewDelegate {
    
    var code = MCCode()
    var campaignDelegate: MCCampaignDelegate?
    
    // MARK: NSTextViewDelegate
    func textDidEndEditing(_ notification: Notification) {
        guard let textView = notification.object as? NSTextView else { return } // Cast the NSTextView. If this isn't successfull, quit the func.
        
        code.code = textView.string
        
        campaignDelegate?.campaignCodeDidChange(aCampaign: self)
        
    }
    
//    func textDidChange(_ notification: Notification) {
//        guard let textView = notification.object as? NSTextView else { return } // Cast the NSTextView. If this isn't successfull, quit the func.
//        
//        code.code = textView.string
//    }
//    
    
}

protocol MCCampaignDelegate {
    func campaignCodeDidChange(aCampaign: MCCampaign)
}

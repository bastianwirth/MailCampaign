//
//  MCPreviewViewController.swift
//  MailCampaign
//
//  Created by Bastian Wirth on 27/09/2016.
//  Copyright © 2016 Bastian Wirth. All rights reserved.
//

import Cocoa
import WebKit

class MCPreviewViewController: NSViewController, MCCampaignDelegate {
    @IBOutlet weak var webView: WebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    // MARK: Campaign Delegate
    func campaignCodeDidChange(aCampaign: MCCampaign) {
        let theCode = aCampaign.code.code
        
        
        webView.mainFrame.loadHTMLString(theCode, baseURL: nil)
    }
}

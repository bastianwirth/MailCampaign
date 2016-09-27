//
//  MCMainWindowController.swift
//  MailCampaign
//
//  Created by Bastian Wirth on 27/09/2016.
//  Copyright © 2016 Bastian Wirth. All rights reserved.
//

import Cocoa

class MCMainWindowController: NSWindowController {

    let campaign = MCCampaign()
    
    var composerViewController: MCComposerViewController?
    var previewViewController: MCPreviewViewController?
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        if let splitViewController = self.contentViewController as? NSSplitViewController {
            composerViewController = splitViewController.childViewControllers[0] as? MCComposerViewController
            previewViewController = splitViewController.childViewControllers[1] as? MCPreviewViewController
            
            composerViewController?.textView.delegate = campaign
            campaign.campaignDelegate = previewViewController
            
        } else {
            // error loading app
        }
        
    }
    
    // MARK: Actions
    @IBAction func sendButtonPushed(_ sender: NSButton) {
        // Sending html mail
        
        
    }
    
    

}

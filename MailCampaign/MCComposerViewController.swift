//
//  MCComposerViewController.swift
//  MailCampaign
//
//  Created by Bastian Wirth on 27/09/2016.
//  Copyright © 2016 Bastian Wirth. All rights reserved.
//

import Cocoa

class MCComposerViewController: NSViewController, NSTextViewDelegate {
    @IBOutlet var textView: NSTextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting the text view delegate
        
        
        //if let mainWindowController = self.parent?.view as? MCMainWindowController {
        //    textView.delegate = mainWindowController.campaign
        //}
    }
    
    // MARK: Actions
    
    
    // MARK: Text View Delegate
    
    
}

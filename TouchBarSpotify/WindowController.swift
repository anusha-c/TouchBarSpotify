//
//  WindowController.swift
//  TouchBarSpotify
//
//  Created by Anusha Choudhary on 10/8/20.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet weak var button1Outlet: NSButton!
    @IBAction func button1Pressed(_ sender: NSButtonCell) {
        label1.stringValue = "SpotifyOpened";
        openSpotify();
    }
    @IBAction func chillButtonPressed(_ sender: NSButton) {
        openPlaylist("spotify:playlist:37i9dQZF1E3638Fawm8jSB");
    }
    @IBAction func onRepeatButtonPressed(_ sender: NSButton) {
        openPlaylist("spotify:playlist:37i9dQZF1EphmC9H3cHwEc");
    }
    @IBAction func NNNbuttonPressed(_ sender: NSButton) {
        openPlaylist("spotify:show:4DyBoHPs0TzQ2wmeVrBG6f");
    }
    
    @IBAction func btsButtonPressed(_ sender: NSButton) {
        openPlaylist("spotify:playlist:5irHWmCSu3p3363hIM5SDd");
    }
    
    
    
    
    @IBOutlet weak var label1: NSTextField!
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    func openSpotify() {
        guard let url = NSWorkspace.shared.urlForApplication(withBundleIdentifier: "com.spotify.client") else { return }
        NSWorkspace.shared.openApplication(at: url,
                                           configuration: NSWorkspace.OpenConfiguration(),
                                           completionHandler: nil)
    }
    
    func openPlaylist(_ uri:String) {
        guard let url = URL(string: uri) else{return};
        NSWorkspace.shared.open(url);
    }

}

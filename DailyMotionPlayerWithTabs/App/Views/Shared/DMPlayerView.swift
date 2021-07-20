//
//  DMPlayerView.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import Foundation
import SwiftUI
import DailymotionPlayerSDK

final class DMPlayerView: UIViewControllerRepresentable {

    typealias UIViewControllerType = DMPlayerViewController
    
    let id: String
    
    init(withId id: String) {
        self.id = id
    }

    func makeUIViewController(context: Context) -> DMPlayerViewController {
        let player = DMPlayerViewController(parameters: [
            "autoplay": "false",
            "logo": "false",
            "queue-enable": "false",
            "fullscreen-action": "trigger_event"
        ])
        player.delegate = self
        return player
    }
    
    func updateUIViewController(_ player: DMPlayerViewController, context: Context) {
        player.load(videoId: id) {
            print("[DMPlayerView.updateUIViewController] load completion")
            player.pause()
        }
    }

}

extension DMPlayerView: DMPlayerViewControllerDelegate {
    
    func player(_ player: DMPlayerViewController, didReceiveEvent event: PlayerEvent) {
        
        switch event {
        // event trigged during the playback phase, just after "namedEvent name = "playing"
        case .timeEvent(name: let name, time: let time):
            print("[DMPlayerView.player(: didReceiveEvent:)] timeEvent: name = \(name) time = \(time)")
        // event trigger playback control events such as play or pause, also send many kind of
        case .namedEvent(name: let name, data: let data):
            print("[DMPlayerView.player(: didReceiveEvent:)] namedEvent: name = \(name) data = \(String(describing: data))")
        case .errorEvent(error: let error):
            print("[DMPlayerView.player(: didReceiveEvent:)] errorEvent: error = \(error.localizedDescription)")
        }
    }
    
    func player(_ player: DMPlayerViewController, openUrl url: URL) {
        print("[DMPlayerView.player(: openUrl:)] url \(url)")
    }
    
    func playerDidInitialize(_ player: DMPlayerViewController) {
        print("[DMPlayerView.playerDidInitialize(:")
    }
    
    func player(_ player: DMPlayerViewController, didFailToInitializeWithError error: Error) {
        print("[DMPlayerView.player(: didFailToInitializeWithError:)] error \(error.localizedDescription)")
    }
    
    
}

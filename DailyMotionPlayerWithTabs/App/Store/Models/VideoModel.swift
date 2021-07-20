//
//  VideoModel.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import Foundation

struct VideoModel: Identifiable {
    let id: String
    let title: String
    let subtitle: String
}


extension VideoModel {
    static var sampleData1: VideoModel {
        VideoModel(
            id: "x82swdn",
            title: "Meet the Female Astronauts Who Just Went to Space With Virgin Galactic",
            subtitle: "Sirisha Bandla and Beth Moses have earned their astronaut wings for their spaceflight, but they're also making great strides on Earth."
        )
    }
    
    static var sampleData2: VideoModel {
        VideoModel(
            id: "x82sng5",
            title: "Japan Preps For Olympics After Yearlong Delay",
            subtitle: "The Tokyo Olympic games kick off in just four days."
        )
    }
    
    static var sampleData3: VideoModel {
        VideoModel(
            id: "x82qnck",
            title: "Montréal et l'Euro partie 2",
            subtitle: "Plusieurs Montréalais ont un parti pris pour une équipe qui participe à l’Euro. Métro en a rencontré quelques-uns."
        )
    }
}

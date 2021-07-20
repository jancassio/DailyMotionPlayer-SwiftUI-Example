//
//  MainView.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import SwiftUI

struct MainView: View {
    let model: VideoModel
    var body: some View {
        VideoDetailView(model: model)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(model: .sampleData3)
    }
}

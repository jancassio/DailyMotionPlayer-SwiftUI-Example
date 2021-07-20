//
//  SectionsView.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import SwiftUI

struct SectionsView: View {
    var body: some View {
        TabView {
            MainView(model: .sampleData3)
                .tabItem {
                    Label("Main", systemImage: "film")
                }
            
            VideoListView(videos: [.sampleData1, .sampleData2, .sampleData3])
                .tabItem {
                    Label("Videos", systemImage: "list.bullet")
                }
        }
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}

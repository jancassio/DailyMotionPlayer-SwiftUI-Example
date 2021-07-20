//
//  VideoListView.swift
//  DailyMotionPlayerWithTabs
//
//  Created by Jan Cassio on 2021-07-20.
//

import SwiftUI

struct VideoListView: View {
    let videos: [VideoModel]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(
                        destination: VideoDetailView(model: video)
                            .navigationTitle(video.id),
                        label: {
                            Text(video.title)
                        })
                }
            }
            .navigationTitle("Videos")
        }
    }
}

struct VideoList_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView(videos: [.sampleData1, .sampleData2, .sampleData3])
    }
}
